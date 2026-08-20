#!/usr/bin/env python3
"""Generate an InSpec/cinc-auditor profile skeleton from the NIST SP 800-53 Rev 5
OSCAL catalog.

The profile is a **skeleton**: every control carries its NIST control language,
its SP 800-53A assessment procedure as the ``check`` text, and a stubbed test
that skips. No control implements an automated check -- the stubs are where
resource code goes as controls get automated.

Three source facts make this a straight transform rather than a merge:

* NIST's Rev 5 catalog already carries the SP 800-53A assessment procedures
  inline (``assessment-objective`` / ``assessment-method`` parts), so the
  ``check`` text needs no second document.
* SP 800-53B baseline membership is published as pre-resolved catalogs in the
  same directory, so ``tag baseline:`` is a set-membership lookup.
* There is **no remediation text anywhere in 800-53 or 800-53A**. The only part
  names the catalog uses are statement/item/guidance/assessment-*. ``desc 'fix'``
  is therefore a placeholder by construction, not by omission -- see FIX_TEXT.

Organization-defined parameters (ODPs) become InSpec inputs. Every ODP is
declared in ``inspec.yml`` with a bracketed placeholder default so the profile
runs standalone, and the same set is emitted as a fill-in worksheet at
``inputs.yml``:

    cinc-auditor exec . --input-file inputs.yml

Control prose interpolates those inputs, so filling in the worksheet rewrites
the control language the way the organization actually defined it.

Output is deterministic: no timestamps, no clock reads, stable ordering. Re-run
after a NIST catalog republish and diff.

The profile IS this repository: `--output .` regenerates it in place.

Usage:
  python3 tools/nist_catalog_to_inspec/generate.py --output .
  python3 tools/nist_catalog_to_inspec/generate.py --output <dir> \
    --catalog ./cat.json --no-baselines
"""
from __future__ import annotations

import argparse
import json
import os
import re
import shutil
import ssl
import sys
import urllib.error
import urllib.parse
import urllib.request

# Source ref is a parameter, not a constant: NIST republishes the catalog in
# place on main, and a profile regenerated from a moving ref is not reviewable
# as a diff. The pinned commit lives in tools/nist_catalog_to_inspec/README.md.
RAW = ("https://raw.githubusercontent.com/usnistgov/oscal-content/{ref}/"
       "nist.gov/SP800-53/rev5/json/")
CATALOG_FILE = "NIST_SP-800-53_rev5_catalog.json"
BASELINE_FILE = "NIST_SP-800-53_rev5_{name}-baseline-resolved-profile_catalog-min.json"
DEFAULT_REF = "main"
BASELINES = ("LOW", "MODERATE", "HIGH", "PRIVACY")
SECURE_SCHEME = "https"

# Per sparc-validate#265: the directory carries no revision, the revision lives
# in inspec.yml `name:`. A Rev 5 -> Rev 6 uplift bumps the name and the tag; the
# directory never churns.
PROFILE_NAME = "nist-800-53-rev5"
PROFILE_VERSION = "0.1.0"
MAINTAINER = "Risk Sentinel"
COPYRIGHT_EMAIL = "support@risk-sentinel.org"

# 800-53 defines what must be true, never how to remediate; 800-53A defines how
# to assess it. Neither publishes fix text, so nothing can be derived here --
# stating that explicitly beats an empty field an assessor has to interpret.
FIX_TEXT = (
    "NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for "
    "this control. Implement the control statement above, record the "
    "implementation statement in the SSP, and replace this text with the "
    "system-specific remediation once the control is automated."
)

SKIP_TEXT = (
    "Not automated. This control is a skeleton: it carries the NIST control "
    "language and the SP 800-53A assessment procedure but performs no check. "
    "Replace this stub with InSpec resource tests to automate it, or assess it "
    "manually and record the result as an attestation."
)

INSERT = re.compile(r"\{\{\s*insert:\s*param,\s*([^}\s]+)\s*\}\}")
# ac-2.1 -> AC-2 (1). Enhancements are single-level in Rev 5 (verified against
# the catalog: no id carries two dots); anything else is a source change and
# must fail loudly rather than silently mis-name a control.
CONTROL_ID = re.compile(r"^([a-z]{2})-(\d+)(?:\.(\d+))?$")


class SourceShapeError(RuntimeError):
    """The catalog does not have the shape this generator was written against."""


# --------------------------------------------------------------------------
# paths
# --------------------------------------------------------------------------
def resolved_under(base: str, *parts: str) -> str:
    """Join `parts` under `base` and resolve, refusing anything that escapes it.

    Control filenames are derived from catalog ids and the output directory from
    a CLI argument; both are joined and then written to. Resolving first and
    checking containment means a traversal sequence from either source fails
    here instead of writing outside the profile.
    """
    base_abs = os.path.realpath(base)
    target = os.path.realpath(os.path.join(base_abs, *parts))
    if base_abs != target and os.path.commonpath([base_abs, target]) != base_abs:
        raise SourceShapeError(f"path escapes {base_abs}: {target}")
    return target


def validated_dir(path: str, create: bool = False) -> str:
    """Resolve a CLI-supplied directory, contained within the working tree.

    `--output` and `--cache` are both written to. This generator has no business
    writing outside the tree it was invoked in, so containment is the invariant
    rather than a cleanup of individual traversal spellings: an absolute path
    inside the tree is fine, `..` and anything outside it fails here rather than
    at the first write.
    """
    resolved = resolved_under(os.getcwd(), path)
    if os.path.exists(resolved) and not os.path.isdir(resolved):
        raise SourceShapeError(f"not a directory: {resolved}")
    if create:
        os.makedirs(resolved, exist_ok=True)
    return resolved


def readable_file(ref: str) -> str:
    """Resolve a user-supplied input path, contained within the working tree."""
    path = resolved_under(os.getcwd(), ref)
    if not os.path.isfile(path):
        raise SourceShapeError(f"not a readable file: {path}")
    return path


# --------------------------------------------------------------------------
# loading
# --------------------------------------------------------------------------
def fetch(ref: str, cache_dir: str | None = None) -> dict:
    """Load OSCAL JSON from a local path or URL, optionally caching downloads."""
    scheme = urllib.parse.urlsplit(ref).scheme.lower()
    if scheme and scheme != SECURE_SCHEME:
        raise SourceShapeError(
            f"refusing to fetch {ref} over {scheme!r}. The catalog is published "
            f"over {SECURE_SCHEME}; anything else would let the source be "
            "rewritten in transit.")
    if scheme != SECURE_SCHEME:
        with open(readable_file(ref)) as fh:
            return json.load(fh)
    cached = None
    if cache_dir:
        safe_cache = validated_dir(cache_dir, create=True)
        cached = resolved_under(safe_cache, os.path.basename(ref))
        if os.path.exists(cached):
            with open(cached) as fh:
                return json.load(fh)
    try:
        # No context argument: urlopen builds the stock verified context
        # (check_hostname on, CERT_REQUIRED), which also honours SSL_CERT_FILE.
        with urllib.request.urlopen(ref, timeout=180) as resp:  # noqa: S310
            raw = resp.read()
    except urllib.error.URLError as exc:
        # urlopen wraps a TLS failure in URLError rather than raising the ssl
        # error directly, so the reason has to be unwrapped -- catching
        # ssl.SSLCertVerificationError alone never fires.
        if not isinstance(exc.reason, ssl.SSLCertVerificationError):
            raise
        # Some Python builds (python.org macOS) ship no system trust store.
        # Point them at one rather than weakening verification.
        raise RuntimeError(
            f"TLS verification failed fetching {ref}: {exc}. Set SSL_CERT_FILE to "
            "a CA bundle, or download the file yourself and pass --catalog / "
            "--cache.") from exc
    if cached:
        with open(cached, "wb") as fh:
            fh.write(raw)
    return json.loads(raw)


def iter_controls(node):
    """Yield every control and enhancement under a catalog/group/control."""
    for group in node.get("groups") or []:
        yield from iter_controls(group)
    for ctrl in node.get("controls") or []:
        yield ctrl
        yield from iter_controls(ctrl)


def prop(obj: dict, name: str) -> str | None:
    for p in obj.get("props") or []:
        if p.get("name") == name:
            return p.get("value")
    return None


def is_withdrawn(ctrl: dict) -> bool:
    return prop(ctrl, "status") == "withdrawn"


def parts_named(node: dict, name: str) -> list:
    return [p for p in node.get("parts") or [] if p.get("name") == name]


# --------------------------------------------------------------------------
# identifiers
# --------------------------------------------------------------------------
def display_id(oscal_id: str) -> str:
    """ac-2 -> 'AC-2'; ac-2.1 -> 'AC-2 (1)' (the SP 800-53A / Heimdall form)."""
    m = CONTROL_ID.match(oscal_id)
    if not m:
        raise SourceShapeError(f"unrecognized control id shape: {oscal_id!r}")
    family, num, enh = m.groups()
    base = f"{family.upper()}-{num}"
    return f"{base} ({enh})" if enh else base


def file_id(oscal_id: str) -> str:
    """Control filename stem. Uppercased source id: AC-2.rb, AC-2.1.rb."""
    return oscal_id.upper()


def input_name(param_id: str) -> str:
    """ac-02_odp.01 -> ac_02_odp_01. Must be a legal InSpec input name."""
    return re.sub(r"[^0-9a-z]+", "_", param_id.lower()).strip("_")


# --------------------------------------------------------------------------
# parameters (ODPs)
# --------------------------------------------------------------------------
def param_placeholder(param: dict) -> str:
    """Bracketed stand-in used until the organization defines the value."""
    if param.get("select"):
        sel = param["select"]
        choices = "; ".join(sel.get("choice") or [])
        how = (sel.get("how-many") or "one").replace("-", " ")
        return f"[selection ({how}): {choices}]"
    label = (param.get("label") or "").strip()
    if not label:
        return f"[organization-defined value: {param['id']}]"
    if label.startswith("organization-defined"):
        return f"[{label}]"
    return f"[organization-defined {label}]"


def param_description(param: dict, ctrl_display: str) -> str:
    """Input description: the 800-53A assessment guideline where one exists."""
    guides = [g.get("prose", "").strip() for g in param.get("guidelines") or []]
    guide = " ".join(g for g in guides if g)
    formal = prop(param, "label") or param["id"]
    if guide:
        return f"{ctrl_display} {formal}: {guide}"
    if param.get("select"):
        how = (param["select"].get("how-many") or "one").replace("-", " ")
        return (f"{ctrl_display} {formal}: select {how} of "
                f"{'; '.join(param['select'].get('choice') or [])}")
    return f"{ctrl_display} {formal}: {(param.get('label') or '').strip()}".rstrip(": ")


# --------------------------------------------------------------------------
# Ruby emission
# --------------------------------------------------------------------------
def rb_single(value: str) -> str:
    """Single-quoted Ruby literal (no interpolation)."""
    return "'" + value.replace("\\", "\\\\").replace("'", "\\'") + "'"


def esc_heredoc(text: str) -> str:
    """Escape literal prose for an interpolating (<<~) heredoc."""
    return text.replace("\\", "\\\\").replace("#{", "\\#{")


def render_prose(text: str, used: set) -> str:
    """Escape prose and turn `{{ insert: param, x }}` into `#{input('x')}`."""
    out, pos = [], 0
    for m in INSERT.finditer(text):
        out.append(esc_heredoc(text[pos:m.start()]))
        used.add(m.group(1))
        out.append("#{input('%s')}" % input_name(m.group(1)))
        pos = m.end()
    out.append(esc_heredoc(text[pos:]))
    return "".join(out)


def heredoc(tag: str, body: str, indent: str = "  ") -> str:
    """Squiggly heredoc. <<~ strips the common indent, so relative nesting in
    `body` survives; the terminator must not appear as a body line."""
    lines = body.split("\n") if body else []
    if any(line.strip() == tag for line in lines):
        raise SourceShapeError(f"heredoc body contains its terminator {tag!r}")
    inner = indent + "  "
    rendered = "\n".join((inner + line).rstrip() for line in lines)
    return f"<<~{tag}\n{rendered}\n{indent}{tag}"


# --------------------------------------------------------------------------
# control body rendering
# --------------------------------------------------------------------------
def render_items(parts: list, used: set, depth: int = 0, keep=("statement", "item")) -> list:
    """Flatten labeled statement items into indented `a. prose` lines."""
    lines = []
    for part in parts:
        if part.get("name") not in keep:
            continue
        label = prop(part, "label") or ""
        prose = (part.get("prose") or "").strip()
        text = " ".join(x for x in (label, render_prose(prose, used)) if x).strip()
        if text:
            lines.append("  " * depth + text)
        lines += render_items(part.get("parts") or [], used,
                              depth + (1 if text else 0), keep)
    return lines


def render_statement(ctrl: dict, used: set) -> str:
    lines = render_items(parts_named(ctrl, "statement"), used)
    return "\n".join(lines) if lines else "(No control statement published.)"


def render_guidance(ctrl: dict, used: set) -> str:
    proses = [(p.get("prose") or "").strip() for p in parts_named(ctrl, "guidance")]
    return "\n\n".join(render_prose(p, used) for p in proses if p)


def render_method_objects(part: dict, used: set) -> str:
    """The EXAMINE/INTERVIEW/TEST object list for one assessment method."""
    objects = []
    for sub in part.get("parts") or []:
        if sub.get("name") == "assessment-objects":
            # Object lists arrive as blank-line-separated entries.
            objects += [o.strip() for o in (sub.get("prose") or "").split("\n\n")
                        if o.strip()]
    return "; ".join(render_prose(o, used) for o in objects)


def render_methods(ctrl: dict, used: set) -> list:
    lines = []
    for part in parts_named(ctrl, "assessment-method"):
        method = prop(part, "method") or "ASSESS"
        joined = render_method_objects(part, used)
        lines.append(f"  {method}: {joined}" if joined else f"  {method}")
    return lines


def render_check(ctrl: dict, used: set) -> str:
    """SP 800-53A assessment procedure: determine-statements + methods."""
    blocks = []
    # The outermost objective is a bare wrapper labeled with the control id
    # itself (e.g. "AC-02"); rendering it would repeat the control id and indent
    # everything under it. Descend past a prose-less wrapper, keep inner
    # grouping labels ("AC-02d.") -- they carry the statement structure.
    tops = parts_named(ctrl, "assessment-objective")
    if len(tops) == 1 and not (tops[0].get("prose") or "").strip():
        tops = [p for p in tops[0].get("parts") or []
                if p.get("name") == "assessment-objective"]
    objectives = render_items(tops, used, keep=("assessment-objective",))
    if objectives:
        blocks.append("Determine if:\n" + "\n".join("  " + o for o in objectives))
    methods = render_methods(ctrl, used)
    if methods:
        blocks.append("Assessment methods and objects:\n" + "\n".join(methods))
    if not blocks:
        return ("No SP 800-53A assessment procedure is published for this "
                "control. Assess against the control statement.")
    return "\n\n".join(blocks)


def render_control(ctrl: dict, family_title: str, baselines: dict) -> tuple[str, set]:
    used: set = set()
    cid = display_id(ctrl["id"])
    statement = render_statement(ctrl, used)
    check = render_check(ctrl, used)
    guidance = render_guidance(ctrl, used)
    in_baselines = [b for b in BASELINES if ctrl["id"] in baselines.get(b, set())]

    body = [
        f"control {rb_single(cid)} do",
        # Every control is in scope; a skipped test at impact > 0 reports as
        # "Not Reviewed" in HDF/Heimdall. impact 0.0 would report "Not
        # Applicable", which is a different -- and wrong -- assertion.
        "  impact 0.5",
        f"  title {rb_single(ctrl['title'])}",
        "  desc " + heredoc("DESC", statement),
        "  desc 'check', " + heredoc("CHECK", check),
        "  desc 'fix', " + heredoc("FIX", FIX_TEXT),
    ]
    if guidance:
        body.append("  desc 'guidance', " + heredoc("GUIDANCE", guidance))
    body += [
        f"  tag nist: [{rb_single(cid)}]",
        "  tag rev: 'Rev_5'",
        f"  tag family: {rb_single(family_title)}",
        "  tag baseline: %w{" + " ".join(in_baselines) + "}",
    ]
    # `--tags` filters on tag NAMES, not values, so a `baseline: [MODERATE]`
    # array cannot be selected on. The per-baseline marker tags below are what
    # makes `cinc-auditor exec --tags baseline_moderate` select a baseline.
    body += [f"  tag baseline_{b.lower()}: true" for b in in_baselines]
    if used:
        body.append("  tag odp: %w{" + " ".join(input_name(p) for p in sorted(used)) + "}")
    body += [
        "",
        f"  describe {rb_single('NIST SP 800-53 Rev 5 control ' + cid)} do",
        f"    skip {rb_single(SKIP_TEXT)}",
        "  end",
        "end",
        "",
    ]
    return "\n".join(body), used


# --------------------------------------------------------------------------
# profile assembly
# --------------------------------------------------------------------------
def yaml_scalar(value: str) -> str:
    """Single-quoted YAML scalar. Safe for arbitrary prose: YAML's only escape
    inside single quotes is a doubled quote, and folding whitespace keeps every
    entry on one line (NIST guideline prose carries hard newlines)."""
    flat = " ".join(str(value).split())
    return "'" + flat.replace("'", "''") + "'"


def yaml_block(value: str, indent: str = "  ") -> str:
    """Literal block scalar for multi-line prose (summary)."""
    lines = [(indent + line).rstrip() for line in value.split("\n")]
    return "|\n" + "\n".join(lines)


def build(catalog: dict, baselines: dict, outdir: str, include_withdrawn: bool) -> dict:
    cat = catalog["catalog"]
    controls_dir = resolved_under(outdir, "controls")
    if os.path.isdir(controls_dir):
        shutil.rmtree(controls_dir)
    os.makedirs(controls_dir)

    family_of = {}
    for group in cat.get("groups") or []:
        for ctrl in iter_controls(group):
            family_of[ctrl["id"]] = group.get("title", group["id"].upper())

    emitted, withdrawn, seen_files = 0, 0, {}
    all_params: list = []          # [(ctrl_display, param dict)] in catalog order
    referenced: set = set()

    for ctrl in iter_controls(cat):
        if is_withdrawn(ctrl) and not include_withdrawn:
            withdrawn += 1
            continue
        text, used = render_control(ctrl, family_of.get(ctrl["id"], ""), baselines)
        referenced |= used
        stem = file_id(ctrl["id"])
        # Guard case-insensitive filesystems: two ids differing only by case
        # would silently overwrite each other on macOS.
        key = stem.lower()
        if key in seen_files:
            raise SourceShapeError(
                f"control filename collision: {ctrl['id']} vs {seen_files[key]}")
        seen_files[key] = ctrl["id"]
        with open(resolved_under(controls_dir, stem + ".rb"), "w") as fh:
            fh.write(text)
        emitted += 1
        for param in ctrl.get("params") or []:
            all_params.append((display_id(ctrl["id"]), param))

    write_inspec_yml(outdir, cat, all_params)
    seeded = write_odp_worksheet(outdir, cat, all_params)
    return {
        "controls": emitted,
        "withdrawn_skipped": withdrawn,
        "params": len(all_params),
        "params_referenced": len(referenced),
        "inputs_yml": "seeded" if seeded else "preserved (already present)",
    }


def write_inspec_yml(outdir: str, cat: dict, all_params: list) -> None:
    meta = cat.get("metadata", {})
    summary = (
        "Every NIST SP 800-53 Rev 5 control, carrying its control language and\n"
        "its SP 800-53A assessment procedure. No control is automated: each test\n"
        "skips, so a run reports the catalog as Not Reviewed rather than passing.\n"
        "\n"
        "Organization-defined parameters are declared as inputs and interpolate\n"
        "into the control prose; supply them with --input-file inputs.yml.\n"
        "\n"
        f"Generated from the NIST OSCAL catalog ({meta.get('version', 'unknown')})\n"
        "by tools/nist_catalog_to_inspec/generate.py -- do not hand-edit."
    )
    lines = [
        f"name: {PROFILE_NAME}",
        "title: NIST SP 800-53 Revision 5 control skeleton",
        f"maintainer: {MAINTAINER}",
        f"copyright: {MAINTAINER}",
        f"copyright_email: {COPYRIGHT_EMAIL}",
        "license: Apache-2.0",
        f"version: {PROFILE_VERSION}",
        "inspec_version: '>= 5.0'",
        "summary: " + yaml_block(summary),
        "",
        "# Platform-agnostic: the catalog is not tied to a cloud or an OS, and no",
        "# control executes a check. Automated descendants declare their own.",
        "supports: []",
        "",
        "# Organization-defined parameters (ODPs). Defaults are bracketed",
        "# placeholders so the profile runs unconfigured; supply real values with",
        "#   --input-file inputs.yml",
        "inputs:",
    ]
    for ctrl_display, param in all_params:
        lines += [
            f"  - name: {input_name(param['id'])}",
            "    type: String",
            f"    value: {yaml_scalar(param_placeholder(param))}",
            f"    description: {yaml_scalar(param_description(param, ctrl_display))}",
        ]
    with open(resolved_under(outdir, "inspec.yml"), "w") as fh:
        fh.write("\n".join(lines) + "\n")


def write_odp_worksheet(outdir: str, cat: dict, all_params: list) -> bool:
    """Emit the ODP worksheet: same defaults, grouped and commented by control.

    ``inputs.template.yml`` is always rewritten. The working copy
    (``inputs.yml``) is only seeded when absent, so regenerating after a NIST
    republish never discards values an organization has already filled in.
    Returns True when the working copy was seeded.
    """
    lines = [
        "# Organization-defined parameters (ODPs) for NIST SP 800-53 Rev 5.",
        "#",
        "# Every value below is a placeholder. Replace the bracketed text with the",
        "# value the organization has defined, then run:",
        "#",
        "#   cinc-auditor exec . --input-file inputs.yml",
        "#",
        "# Values interpolate into the control language, so a filled-in worksheet",
        "# makes each control read the way this system actually implements it.",
        "#",
        "# inputs.template.yml is regenerated every run. inputs.yml is seeded from",
        "# it once and never overwritten -- fill that one in.",
        "",
    ]
    titles = {display_id(c["id"]): c["title"] for c in iter_controls(cat)}
    current = None
    for ctrl_display, param in all_params:
        if ctrl_display != current:
            current = ctrl_display
            lines += ["", f"# {ctrl_display} {titles.get(ctrl_display, '')}".rstrip()]
        lines.append(f"# {prop(param, 'label') or param['id']}")
        lines.append(f"{input_name(param['id'])}: "
                     f"{yaml_scalar(param_placeholder(param))}")
    body = "\n".join(lines) + "\n"
    with open(resolved_under(outdir, "inputs.template.yml"), "w") as fh:
        fh.write(body)
    working = resolved_under(outdir, "inputs.yml")
    if os.path.exists(working):
        return False
    with open(working, "w") as fh:
        fh.write(body)
    return True


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--output", required=True, help="profile directory to (re)generate")
    ap.add_argument("--catalog", default=None,
                    help="OSCAL catalog path or URL (default: fetch at --ref)")
    ap.add_argument("--ref", default=DEFAULT_REF,
                    help="usnistgov/oscal-content git ref to fetch from "
                         f"(default: {DEFAULT_REF}; pin a commit for a reviewable diff)")
    ap.add_argument("--cache", default=None, help="directory to cache downloads in")
    ap.add_argument("--no-baselines", action="store_true",
                    help="skip SP 800-53B baseline tagging (avoids 4 downloads)")
    ap.add_argument("--include-withdrawn", action="store_true",
                    help="emit withdrawn controls too (default: skip)")
    args = ap.parse_args(argv)

    raw = RAW.format(ref=args.ref)
    catalog = fetch(args.catalog or raw + CATALOG_FILE, args.cache)
    baselines = {}
    if not args.no_baselines:
        for name in BASELINES:
            resolved = fetch(raw + BASELINE_FILE.format(name=name), args.cache)
            baselines[name] = {c["id"] for c in iter_controls(resolved["catalog"])}

    outdir = validated_dir(args.output, create=True)
    stats = build(catalog, baselines, outdir, args.include_withdrawn)
    for name in BASELINES:
        if name in baselines:
            stats[f"baseline_{name.lower()}"] = len(baselines[name])
    print(json.dumps(stats, indent=2))
    return 0


if __name__ == "__main__":
    sys.exit(main())
