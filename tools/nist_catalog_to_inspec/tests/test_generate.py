"""Unit tests for tools/nist_catalog_to_inspec/generate.py (#339).

    python3 -m pytest tools/nist_catalog_to_inspec/tests/


The generator writes 1,000+ Ruby files from NIST prose, so the failure mode to
guard is silent corruption: prose that breaks out of a heredoc, an ODP marker
left unsubstituted, a withdrawn control emitted as if it were in force, or two
controls colliding on a case-insensitive filesystem. Each test below asserts on
the emitted text rather than on the generator merely exiting zero, and the
round-trip test hands the output to `ruby -c` so a quoting regression fails here
instead of at `cinc-auditor exec`.
"""

from __future__ import annotations

import shutil
import subprocess
import sys
from pathlib import Path

import pytest

TOOL_DIR = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(TOOL_DIR))

from generate import (  # noqa: E402
    SourceShapeError,
    build,
    fetch,
    display_id,
    esc_heredoc,
    heredoc,
    input_name,
    objective_leaves,
    objective_stem,
    param_placeholder,
    readable_file,
    render_prose,
    validated_dir,
    resolved_under,
    yaml_scalar,
)


def load_yaml(path: Path):
    """PyYAML is not a repo dependency (tools are stdlib-only, pytest is the one
    third-party package). Where it is installed we parse for real; where it is
    not, `cinc-auditor check` in CI is the backstop."""
    yaml = pytest.importorskip("yaml")
    return yaml.safe_load(path.read_text())


def _catalog():
    """Minimal catalog exercising every shape the real one contains."""
    return {
        "catalog": {
            "metadata": {"title": "test catalog", "version": "5.2.0"},
            "groups": [{
                "id": "ac",
                "title": "Access Control",
                "controls": [
                    {
                        "id": "ac-2",
                        "title": "Account Management",
                        "params": [
                            {"id": "ac-02_odp.01",
                             "props": [{"name": "label", "value": "AC-02_ODP[01]"}],
                             "label": "personnel or roles",
                             "guidelines": [{"prose": "personnel or roles are defined;"}]},
                            {"id": "ac-02_odp.02",
                             "props": [{"name": "label", "value": "AC-02_ODP[02]"}],
                             "select": {"how-many": "one-or-more",
                                        "choice": ["remove", "disable"]}},
                        ],
                        "parts": [
                            {"id": "ac-2_smt", "name": "statement", "parts": [
                                {"id": "ac-2_smt.a", "name": "item",
                                 "props": [{"name": "label", "value": "a."}],
                                 "prose": "Assign account managers;"},
                                {"id": "ac-2_smt.b", "name": "item",
                                 "props": [{"name": "label", "value": "b."}],
                                 "prose": "Notify {{ insert: param, ac-02_odp.01 }};",
                                 "parts": [
                                     {"id": "ac-2_smt.b.1", "name": "item",
                                      "props": [{"name": "label", "value": "1."}],
                                      "prose": "Accounts to {{ insert: param, ac-02_odp.02 }}."},
                                 ]},
                            ]},
                            {"id": "ac-2_gdn", "name": "guidance",
                             "prose": "Discussion text."},
                            {"id": "ac-2_obj", "name": "assessment-objective",
                             "props": [{"name": "label", "value": "AC-02"}],
                             "parts": [
                                 {"id": "ac-2_obj.a", "name": "assessment-objective",
                                  "props": [{"name": "label", "value": "AC-02a."}],
                                  "prose": "account managers are assigned;"},
                                 {"id": "ac-2_obj.b", "name": "assessment-objective",
                                  "props": [{"name": "label", "value": "AC-02b."}],
                                  "parts": [
                                      {"id": "ac-2_obj.b1", "name": "assessment-objective",
                                       "props": [{"name": "label", "value": "AC-02b.[01]"}],
                                       "prose": "accounts to {{ insert: param, ac-02_odp.02 }} are defined;"},
                                      # No label: NIST ships two of these (si-2.7).
                                      {"id": "ac-2_obj.b2", "name": "assessment-objective",
                                       "prose": "the unlabelled determination holds."},
                                  ]},
                             ]},
                            {"id": "ac-2_asm-examine", "name": "assessment-method",
                             "props": [{"name": "method", "value": "EXAMINE"}],
                             "parts": [{"id": "ac-2_asm-examine.obj",
                                        "name": "assessment-objects",
                                        "prose": "Access control policy\n\nsystem design documentation"}]},
                        ],
                        "controls": [
                            {"id": "ac-2.1", "title": "Automated Account Management",
                             "parts": [
                                 {"id": "ac-2.1_smt", "name": "statement",
                                  "prose": "Support account management."},
                                 {"id": "ac-2.1_obj", "name": "assessment-objective",
                                  "props": [{"name": "label", "value": "AC-02(01)"}],
                                  "prose": "account management is supported."},
                             ]},
                            {"id": "ac-2.10", "title": "Withdrawn",
                             "props": [{"name": "status", "value": "withdrawn"}]},
                        ],
                    },
                ],
            }],
        }
    }


@pytest.fixture
def generated(tmp_path):
    out = tmp_path / "profile"
    stats = build(_catalog(), {"MODERATE": {"ac-2"}}, str(out), False)
    return out, stats


# -- identifiers -----------------------------------------------------------
def test_display_id_forms():
    assert display_id("ac-2") == "AC-2"
    assert display_id("ac-2.1") == "AC-2 (1)"
    with pytest.raises(SourceShapeError):
        display_id("ac-2.1.3")  # two-level enhancement = unhandled source change


def test_input_name_is_a_legal_identifier():
    assert input_name("ac-02_odp.01") == "ac_02_odp_01"
    assert input_name("ac-2.1_prm_1") == "ac_2_1_prm_1"


# -- prose safety ----------------------------------------------------------
def test_interpolation_only_for_markers_literals_escaped():
    used = set()
    out = render_prose("Notify {{ insert: param, ac-02_odp.01 }} via #{evil} \\x", used)
    assert "#{input('ac_02_odp_01')}" in out
    assert "\\#{evil}" in out          # a literal #{ must not become interpolation
    assert "\\\\x" in out              # backslash escaped for the Ruby heredoc
    assert used == {"ac-02_odp.01"}


def test_heredoc_rejects_body_containing_terminator():
    with pytest.raises(SourceShapeError):
        heredoc("DESC", "line one\nDESC\nline two")


def test_esc_heredoc_leaves_plain_text_alone():
    assert esc_heredoc("no specials here") == "no specials here"


# -- parameters ------------------------------------------------------------
def test_param_placeholder_shapes():
    assert param_placeholder({"id": "x", "label": "frequency"}) == \
        "[organization-defined frequency]"
    assert param_placeholder({"id": "x", "label": "organization-defined events"}) == \
        "[organization-defined events]"
    assert param_placeholder(
        {"id": "x", "select": {"how-many": "one-or-more", "choice": ["a", "b"]}}) == \
        "[selection (one or more): a; b]"
    assert param_placeholder({"id": "zz_odp"}) == "[organization-defined value: zz_odp]"


# -- path handling ---------------------------------------------------------
def test_resolved_under_allows_children_and_refuses_escapes(tmp_path):
    base = str(tmp_path / "profile")
    assert resolved_under(base, "controls", "AC-2.rb").startswith(base)
    with pytest.raises(SourceShapeError, match="escapes"):
        resolved_under(base, "..", "outside.rb")
    with pytest.raises(SourceShapeError, match="escapes"):
        resolved_under(base, "controls/../../outside.rb")


def test_readable_file_rejects_missing_paths_and_directories(tmp_path, monkeypatch):
    monkeypatch.chdir(tmp_path)
    (tmp_path / "catalog.json").write_text("{}")
    assert readable_file("catalog.json") == str(tmp_path.resolve() / "catalog.json")
    with pytest.raises(SourceShapeError, match="not a readable file"):
        readable_file("nope.json")
    with pytest.raises(SourceShapeError, match="not a readable file"):
        readable_file(".")  # a directory is not a catalog


@pytest.mark.parametrize("url", [
    "http://example.invalid/NIST_SP-800-53_rev5_catalog.json",
    "ftp://example.invalid/NIST_SP-800-53_rev5_catalog.json",
])
def test_insecure_schemes_are_refused(url):
    # A downgrade would let the catalog be rewritten in transit; the profile is
    # generated verbatim from it, so the fetch scheme is a supply-chain control.
    with pytest.raises(SourceShapeError, match="rewritten in transit"):
        fetch(url)


def test_validated_dir_contains_writes_in_the_working_tree(tmp_path, monkeypatch):
    monkeypatch.chdir(tmp_path)
    assert validated_dir("out", create=True) == str(tmp_path.resolve() / "out")
    assert (tmp_path / "out").is_dir()
    # absolute, but still inside the tree -> allowed
    assert validated_dir(str(tmp_path / "abs")) == str(tmp_path.resolve() / "abs")


@pytest.mark.parametrize("bad", ["../elsewhere", "/etc"])
def test_validated_dir_refuses_paths_outside_the_working_tree(tmp_path, monkeypatch, bad):
    monkeypatch.chdir(tmp_path)
    with pytest.raises(SourceShapeError, match="escapes"):
        validated_dir(bad, create=True)


def test_validated_dir_refuses_a_file(tmp_path, monkeypatch):
    monkeypatch.chdir(tmp_path)
    (tmp_path / "afile").write_text("x")
    with pytest.raises(SourceShapeError, match="not a directory"):
        validated_dir("afile")


# -- hand-rolled YAML ------------------------------------------------------
def test_yaml_scalar_quotes_and_folds():
    # No pyyaml at runtime, so the quoting is ours to get right: YAML's only
    # escape inside single quotes is a doubled quote, and a raw newline would
    # split one entry into two lines of invalid YAML.
    assert yaml_scalar("plain") == "'plain'"
    assert yaml_scalar("the system owner's role") == "'the system owner''s role'"
    assert yaml_scalar("first line\nsecond  line") == "'first line second line'"
    assert yaml_scalar("[selection: a; b]") == "'[selection: a; b]'"


def test_yaml_scalar_output_round_trips():
    yaml = pytest.importorskip("yaml")
    for raw in ("it's here", "a: b", "- dash", "#hash", "100%", "", "*star"):
        assert yaml.safe_load("k: " + yaml_scalar(raw)) == {"k": raw}


# -- emitted profile -------------------------------------------------------
def objfiles(out):
    """Every emitted objective as 'family/stem.rb', sorted."""
    root = out / "controls"
    return sorted(str(p.relative_to(root)) for p in root.rglob("*.rb"))


def test_objectives_are_split_per_leaf_and_grouped_by_family(generated):
    out, stats = generated
    # One file per assessment-objective LEAF, under the control's family.
    # AC-02b. is a grouping node and gets no file of its own; its two leaves do.
    assert objfiles(out) == [
        "ac/AC-02.01.rb",       # the enhancement's objective: parens -> dot
        "ac/AC-02a.rb",
        "ac/AC-02b_01.rb",      # brackets -> underscore, so it cannot collide
        "ac/AC-02b_02.rb",      # unlabelled leaf, fallback label from its parent
    ]
    assert stats["objectives"] == 4      # emitted files == InSpec controls
    assert stats["controls"] == 2        # catalog controls they decompose
    assert stats["withdrawn_skipped"] == 1


def test_unlabelled_objective_falls_back_to_parent_plus_index(generated):
    out, _ = generated
    # NIST ships two objectives with prose but no label (si-2.7). A blank id
    # would collide with its sibling and a crash would drop the determination.
    text = (out / "controls" / "ac" / "AC-02b_02.rb").read_text()
    assert text.startswith("control 'AC-02b.[02]' do")
    assert "the unlabelled determination holds." in text


def test_objective_carries_statement_methods_fix_and_tags(generated):
    out, _ = generated
    text = (out / "controls" / "ac" / "AC-02a.rb").read_text()
    assert text.startswith("control 'AC-02a.' do")
    assert "impact 0.5" in text                    # not 0.0: Not Reviewed, not N/A
    # The determination is the title, so a report line names what to determine.
    assert 'title "account managers are assigned;"' in text
    # It still carries its parent's statement, methods and discussion, because
    # whoever automates this objective needs the requirement in front of them.
    assert "a. Assign account managers;" in text
    assert "  1. Accounts to #{input('ac_02_odp_02')}." in text   # nesting preserved
    assert "Determine if:\n      account managers are assigned;" in text
    assert "EXAMINE: Access control policy; system design documentation" in text
    assert "no remediation text" in text           # the fix-text gap is stated
    assert "tag baseline: %w{MODERATE}" in text
    # --tags filters on tag names, so baseline selection needs a marker tag
    assert "tag baseline_moderate: true" in text
    assert "baseline_low" not in text
    assert "skip '" in text                        # every objective is a stub


def test_objective_tags_roll_up_to_its_control(generated):
    out, _ = generated
    text = (out / "controls" / "ac" / "AC-02a.rb").read_text()
    # --controls is an EXACT match on the objective label, so selecting one
    # control's objectives needs a marker tag the same way baselines do.
    assert "tag control: 'AC-2'" in text
    assert "tag objective: 'AC-02a.'" in text
    assert "tag control_ac_2: true" in text


def test_objective_title_interpolates_odps(generated):
    out, _ = generated
    text = (out / "controls" / "ac" / "AC-02b_01.rb").read_text()
    # A determination carrying an ODP must interpolate in the TITLE too -- a
    # single-quoted Ruby literal would print the marker verbatim in reports.
    assert 'title "accounts to #{input(\'ac_02_odp_02\')} are defined;"' in text


def test_filenames_sort_in_control_order(generated):
    out, _ = generated
    # The bug this replaces: AC-10 sorted before AC-2 because the number was
    # unpadded. NIST's own 800-53A labels are zero-padded, so keying the
    # filename off the label fixes ordering without inventing a scheme.
    names = [n.split("/")[1] for n in objfiles(out)]
    assert names == sorted(names)
    assert all(n.startswith("AC-02") for n in names)


def test_paren_and_bracket_labels_do_not_collide():
    # Real pair in the catalog: CA-7(1) the enhancement vs CA-07[01] the
    # determination. Flattening both to a dot silently loses one.
    assert objective_stem("CA-07(01)") == "CA-07.01"
    assert objective_stem("CA-07[01]") == "CA-07_01"
    assert objective_stem("AC-01a.[01]") == "AC-01a_01"
    assert objective_stem("AC-01a.01(a)[07]") == "AC-01a.01.a_07"


def test_control_with_no_objectives_is_fatal(tmp_path):
    # Every non-withdrawn control in the real catalog publishes at least one
    # objective. If that stops being true the control would emit no file at
    # all, and a silently-missing control is the failure this repo exists to
    # avoid.
    cat = _catalog()
    cat["catalog"]["groups"][0]["controls"][0]["parts"] = [
        {"id": "ac-2_smt", "name": "statement", "prose": "Assign managers."}]
    with pytest.raises(SourceShapeError, match="no assessment objective"):
        build(cat, {}, str(tmp_path / "profile"), False)


def test_every_odp_is_declared_as_an_input(generated):
    out, stats = generated
    meta = load_yaml(out / "inspec.yml")
    declared = {i["name"] for i in meta["inputs"]}
    assert declared == {"ac_02_odp_01", "ac_02_odp_02"}
    assert stats["params"] == 2
    assert stats["params_referenced"] == 2
    by_name = {i["name"]: i for i in meta["inputs"]}
    assert by_name["ac_02_odp_01"]["value"] == "[organization-defined personnel or roles]"
    assert "personnel or roles are defined;" in by_name["ac_02_odp_01"]["description"]


def test_inputs_yml_is_valid_yaml_and_matches_declared_inputs(generated):
    out, _ = generated
    values = load_yaml(out / "inputs.yml")
    meta = load_yaml(out / "inspec.yml")
    assert set(values) == {i["name"] for i in meta["inputs"]}
    assert values["ac_02_odp_02"] == "[selection (one or more): remove; disable]"


def test_regeneration_preserves_filled_in_odp_values(tmp_path):
    out = tmp_path / "profile"
    build(_catalog(), {}, str(out), False)
    working = out / "inputs.yml"
    working.write_text("ac_02_odp_01: 'the system owner'\n")
    stats = build(_catalog(), {}, str(out), False)
    assert working.read_text() == "ac_02_odp_01: 'the system owner'\n"
    assert stats["inputs_yml"].startswith("preserved")
    # the pristine copy is still regenerated alongside it
    template = load_yaml(out / "inputs.template.yml")
    assert template["ac_02_odp_01"] == "[organization-defined personnel or roles]"


def test_stale_controls_are_cleared_on_regeneration(tmp_path):
    out = tmp_path / "profile"
    build(_catalog(), {}, str(out), False)
    stale = out / "controls" / "ac" / "XX-9.rb"
    stale.write_text("control 'XX-9' do\nend\n")
    build(_catalog(), {}, str(out), False)
    assert not stale.exists()


def test_filename_collision_is_fatal(tmp_path):
    cat = _catalog()
    # Two controls mapping to one filename would silently overwrite each other
    # -- the generator would still report a full emit. Duplicate ids are the
    # reachable case; the guard compares case-folded so a macOS run cannot
    # collide two ids that a Linux run keeps apart either.
    cat["catalog"]["groups"][0]["controls"].append({
        "id": "ac-2", "title": "Duplicate",
        "parts": [{"id": "dup_obj", "name": "assessment-objective",
                   "props": [{"name": "label", "value": "AC-02a."}],
                   "prose": "a second objective claiming the same label."}]})
    with pytest.raises(SourceShapeError, match="collision"):
        build(cat, {}, str(tmp_path / "profile"), False)


@pytest.mark.skipif(shutil.which("ruby") is None, reason="ruby not installed")
def test_emitted_ruby_parses(generated):
    out, _ = generated
    for path in sorted((out / "controls").rglob("*.rb")):
        proc = subprocess.run(["ruby", "-c", str(path)],
                              capture_output=True, text=True)
        assert proc.returncode == 0, f"{path.name}: {proc.stderr}"
