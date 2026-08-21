# nist_catalog_to_inspec — NIST 800-53 catalog → InSpec skeleton

Generates this repository from NIST's published OSCAL: every
SP 800-53A Rev 5 **assessment objective** as an InSpec control carrying its
parent control's language, the assessment methods as `check` text, and a stub
that skips. 1,014 catalog controls decompose into 2,776 objectives.

**Why this exists:** the sibling scaffolder (`tools/xccdf_to_inspec/`) starts
from an XCCDF benchmark, which gives it check *and* fix text per rule. There is
no XCCDF for 800-53 — the catalog is OSCAL — and the shape of the source is
different enough to warrant its own tool rather than a mode flag.

## Design decisions

- **One source file, not a merge.** NIST's Rev 5 catalog already carries the
  SP 800-53A assessment procedures inline as `assessment-objective` /
  `assessment-method` parts, so `check` text needs no second document. SP 800-53B
  baseline membership comes from the four pre-resolved baseline catalogs in the
  same directory.
- **There is no fix text, and the profile says so.** 800-53 defines what must be
  true; 800-53A defines how to assess it. Neither publishes remediation — the
  only part names in the catalog are `statement`, `item`, `guidance`,
  `assessment-objective`, `assessment-method`, `assessment-objects`. `desc 'fix'`
  is a stated placeholder rather than an empty field an assessor has to interpret.
- **The assessment objective is the unit, not the control.** SP 800-53A's leaf
  objective is the atomic determination an assessor makes and the smallest thing
  one check can satisfy, so it gets the file. The old one-file-per-control shape
  meant automating a single determination required editing a file that held
  sixteen others, and a hand-split was lost on the next regeneration.
- **Filenames come from NIST's labels, which are already zero-padded.** `AC-01`,
  `AC-02(01)`, `AU-09(04)`. Keying off them fixes ordering (`AC-10` no longer
  sorts before `AC-2`) without inventing a padding scheme, and keeps our
  identifiers identical to the publication's. Parens flatten to `.` and brackets
  to `_` — they are different things, and the catalog contains both `CA-07(01)`
  and `CA-07[01]`.
- **Objectives are grouped by family** under `controls/<family>/`. Verified that
  cinc-auditor loads controls from nested subdirectories.
- **ODPs become inputs.** All 1,600 organization-defined parameters are declared
  in `inspec.yml` and interpolated into the control prose, so a filled-in
  `inputs.yml` rewrites the control language the way the organization defined it.
- **The title is the determination.** A report line reads
  `AC-01a.[01]: an access control policy is developed and documented` rather
  than repeating one control title seventeen times. Determinations carry ODP
  references, so the title is an interpolating double-quoted literal — the one
  place `rb_single` would print the marker verbatim.
- **`impact 0.5` with a skipping test.** That reports **Not Reviewed** in HDF.
  `impact 0.0` would report *Not Applicable* — a different and unearned claim,
  and the suppression pattern `docs/dev/issue_rules.md` calls out.
- **The source ref is pinned.** NIST republishes the catalog in place on `main`;
  an unpinned regeneration produces an unreviewable diff.
- **`generate.py` is Python stdlib only** — no pip install, no virtualenv,
  matching the other tools here. YAML is emitted directly (see `yaml_scalar`),
  not via PyYAML. This holds for the generator alone: `seed_sample_odps.py`
  imports PyYAML to read `fedramp_odp_values.yml`, and the tests need pytest.
- **Deterministic output** — no timestamps, no clock reads, stable ordering. Two
  runs at the same ref are byte-identical, so a NIST republish reviews as a diff.

## Usage

```bash
# Regenerate the profile at the pinned catalog commit
python3 tools/nist_catalog_to_inspec/generate.py \
  --output . \
  --ref 78650f02ad9321bb7b817846f8fbd4f2bcd620de

# Work offline / from a local copy
python3 tools/nist_catalog_to_inspec/generate.py \
  --output . \
  --catalog ./NIST_SP-800-53_rev5_catalog.json --no-baselines

# Cache downloads so repeat runs do not re-fetch (~10 MB catalog)
python3 tools/nist_catalog_to_inspec/generate.py \
  --output . --cache .oscal-cache
```

`--output` and `--cache` are both **contained within the working tree** — an
absolute path inside it is fine, anything outside it is refused. This generator
has no business writing elsewhere, and containment is what makes a faulty
argument fail before the first write rather than after it. `.oscal-cache/` is
gitignored.

`inputs.yml` is seeded once and never overwritten, so regenerating after a NIST
republish does not discard organization-defined values. `inputs.template.yml` is
rewritten every run — diff the two to see what is unfilled or what NIST changed.
`controls/` **is** cleared and rewritten; see the profile README for how to
automate a control without losing it.

Every non-withdrawn control must publish at least one assessment objective, and
the generator fails loudly if one does not — a control that emits no file at all
is exactly the silent gap this repository exists to make visible.

## Source pin

| | |
|---|---|
| Source | `usnistgov/oscal-content`, `nist.gov/SP800-53/rev5/json/` |
| Files | `NIST_SP-800-53_rev5_catalog.json` + the four `*-baseline-resolved-profile_catalog-min.json` |
| Pinned commit | `78650f02ad9321bb7b817846f8fbd4f2bcd620de` |
| Retrieved | 2026-08-20 |
| Catalog version | 5.2.0 — carries the SP 800-53A Rev 5.2.0 assessment procedures inline |

Bump the pin here in the same change that regenerates the profile.

If TLS verification fails on a Python build without a system trust store
(python.org macOS), point `SSL_CERT_FILE` at a CA bundle or download the catalog
and pass `--catalog`. Do not weaken verification.

## Tests

```bash
python3 -m pytest tools/nist_catalog_to_inspec/tests/
```

The suite asserts on emitted text, not on the generator exiting zero: prose that
could break out of a Ruby heredoc, ODP markers left unsubstituted, withdrawn
controls emitted as if in force, two objectives colliding on one filename, the
paren-versus-bracket distinction that collision turns on, the unlabelled-objective
fallback, a control publishing no objectives at all, and YAML quoting. Every emitted control file is handed to `ruby -c`, so a quoting
regression fails there rather than at `cinc-auditor exec`.


---

## seed_sample_odps.py — the sample ODP worksheet

`generate.py` emits `inputs.template.yml` with NIST's raw placeholders
(`[organization-defined frequency]`). Those are correct and unreadable: control
prose interpolates them, so an unfilled profile renders sentences full of square
brackets.

`seed_sample_odps.py` produces `inputs.yml` from that template, filling every one
of the 1,600 ODPs. It is offline and deterministic, so CI gates it for drift.

Unlike `generate.py` it needs PyYAML — `pip install pyyaml` — to read
`fedramp_odp_values.yml`.

```bash
python3 tools/nist_catalog_to_inspec/seed_sample_odps.py
```

### Where the values come from

Precedence order, and every value is attributable to exactly one source:

1. **FedRAMP's published assignments** — `fedramp_odp_values.yml`, committed
   beside this script. The only values anyone else decided.
2. **Hand-checked overrides** — a handful where the archetype sample was
   grammatical but wrong enough to mislead. "Report suspected incidents within
   30 days" is not a sample, it is a wrong answer. Each was read against the
   control's own sentence.
3. **The placeholder's own selection list** — `[selection (one): remove;
   disable]` becomes `remove`. The *first* option, always: a mechanical rule is
   auditable, and it always reads grammatically where a cleverer one would not.
4. **Archetype samples** — keyed off the placeholder text. `annually` for a
   frequency, `30 days` for a time period.
5. **Pointers** — "the X defined in the system security plan". Used where
   inventing content would read like a decision nobody made.

### Two things it fixes that are easy to miss

**The scan is recursive, and fatal if it finds nothing.** Objectives live in
`controls/<family>/`, so the collision scan uses `rglob`. A non-recursive glob
there matches nothing, silently finds no collisions, and changes every affected
ODP value without raising — a wrong answer with no error. Scanning zero files is
therefore fatal rather than a quiet no-op.

**Article collisions.** Some control prose supplies the article itself —
"Designate an `#{input('ac_01_odp_04')}`" — so a value beginning "the ..."
renders as *"Designate an the Information System Security Officer"*. 254
references across 86 ODPs do this. The script finds them by scanning the
generated controls rather than from a hand-kept list, because the set changes
whenever NIST republishes.

**Nested OSCAL parameter references.** NIST nests `{{ insert: param, ... }}`
inside parameter text, and `generate.py` emits those raw. Picking a selection
option can therefore carry OSCAL template syntax into rendered control prose. 49
placeholders in the template contain one; the seeder resolves them against the
other seeded values and fails loudly if it cannot.

That second one is a defect in `generate.py`, worked around here rather than
fixed there — see the repository issues.
