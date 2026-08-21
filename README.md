# NIST-800-53-Profile

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=risk-sentinel_NIST-800-53-Profile)](https://sonarcloud.io/summary/new_code?id=risk-sentinel_NIST-800-53-Profile)

Every NIST SP 800-53 Revision 5 assessment objective as an InSpec
(cinc-auditor) control.
**2,776 objectives across 1,014 controls, 1,600 organization-defined parameters,
and no checks.**

The unit here is the SP 800-53A **assessment objective** — the atomic
determination an assessor makes, such as *"an access control policy is developed
and documented"* — not the control. That is what one check can satisfy, so it is
what gets its own file. Each objective carries its parent control's statement,
the assessment methods, and the discussion text — then skips. A run reports the
whole catalog as *Not Reviewed* rather than as passing, because a profile that
asserts nothing and reports green is worse than no profile at all.

## What this is for

- **A shell to attach real checks to,** one assessment objective at a time,
  without anyone retyping control language out of the publication. Automating
  one determination no longer means touching its sixteen siblings.
- **A denominator.** An HDF artifact showing the full control set and how much
  of it is still unassessed, next to whatever scanning profiles actually cover.
- **An ODP worksheet.** 1,600 organization-defined parameters in one file
  instead of prose scattered across an SSP. Fill it in and the control text
  rewrites itself to say what your system actually does.

Most of 800-53 is organizational — policy, agreements, personnel, training — so
only a minority of these controls will ever carry an executable check. The ones
that stay manual get assessed and attested; this skeleton is where that shows up
rather than being quietly absent.

## Prerequisites

[cinc-auditor](https://cinc.sh/start/auditor/) 5 or later — or `inspec`, which takes
the same arguments. The profile has no `depends:` and no custom resources, so there
is nothing to vendor.

### If you have a Ruby version manager installed, read this first

cinc-auditor ships its own Ruby inside `/opt/cinc-auditor/embedded`. RVM, rbenv,
chruby and a `gem install chef` all export `GEM_HOME` and `GEM_PATH` into the
shell, and the omnibus launcher honours them — so it loads *your* gems, built
against *your* Ruby's ABI, into its embedded Ruby. Native extensions then fail to
load:

```
`require': incompatible library version -
  ~/.rvm/gems/ruby-3.4.9/gems/openssl-3.3.0/lib/openssl.bundle (LoadError)
```

The version numbers vary; `openssl` is usually the first to break because the
launcher requires it before anything else. Clear the two variables for the call:

```bash
env -u GEM_HOME -u GEM_PATH cinc-auditor exec . --input-file inputs.yml --reporter cli
```

Make it permanent with a shell function in your `~/.zshrc` or `~/.bashrc`:

```bash
cinc-auditor() { env -u GEM_HOME -u GEM_PATH -u RUBYOPT -u RUBYLIB \
  /usr/local/bin/cinc-auditor "$@"; }
```

`rvm use system` before the run works too. Do **not** fix this by installing gems
into the embedded Ruby or by pointing `GEM_HOME` at it — that mixes two gem sets
that were never resolved together, and the next `cinc-auditor` upgrade discards
whatever you put there.

CI runs the profile inside `risksentinel/sparc-auditor`, where no version manager
is present, so this is a workstation problem only.

## Quick start

```bash
git clone https://github.com/risk-sentinel/NIST-800-53-Profile.git
cd NIST-800-53-Profile

# The whole catalog, with the sample ODP values filled in.
cinc-auditor exec . --input-file inputs.yml --reporter cli

# Just one baseline.
cinc-auditor exec . --input-file inputs.yml --tags baseline_moderate

# One control's objectives, to see what the prose looks like once ODPs
# interpolate. --controls is an EXACT match on the 800-53A objective label
# (`AC-01a.[01]`), so selecting a whole control is a tag.
cinc-auditor exec . --input-file inputs.yml --tags control_ac_1

# One specific objective.
cinc-auditor exec . --input-file inputs.yml --controls 'AC-01a.[01]'
```

No dependencies to vendor: the profile has no `depends:` and no custom
resources, so a clone runs as-is.

### What a first run looks like

Every control reports **skipped**, with the rationale attached:

```
  ↺  AC-01a.[01]: an access control policy is developed and documented;
     ↺  Not automated. This control is a skeleton: it carries the NIST control
        language and the SP 800-53A assessment procedure but performs no check.
```

The title is the determination itself, with ODPs already interpolated, so a
report reads as the assessment procedure rather than as a list of control
numbers.

That is the expected result. In HDF terms the profile renders as *Not Reviewed*
across the board — an honest starting position, and the thing you measure
progress against.

## The ODP worksheet, and a warning about it

`inputs.yml` ships **pre-filled with illustrative sample values** so the control
prose reads as English out of the box. They are samples. They are not anyone's
ODPs, and a sample that survives into an authorization package is a finding.

| Source | Count | What it means |
| --- | ---: | --- |
| FedRAMP's published assignments | 19 | The only values here somebody else decided |
| Hand-checked against the control | 11 | Where the generic sample was grammatical but wrong enough to mislead |
| The placeholder's own selection list | 128 | First option, always — a mechanical rule is auditable |
| Archetype samples | 848 | `annually` for a frequency, `30 days` for a time period |
| Pointers, not answers | 594 | *"the X defined in the system security plan"* — **fill these in first** |

`inputs.template.yml` holds the pristine NIST placeholders
(`[organization-defined frequency]`) if you would rather start from nothing. It
is rewritten on every catalog regeneration; `inputs.yml` is not, so your edits
survive.

## Regenerating

Content is generated from NIST's published OSCAL — nothing here is hand-written,
and hand-edits are lost on the next run.

Python 3.10 or later. `generate.py` uses the standard library only; the seeder
needs PyYAML, and the tests need pytest:

```bash
python3 -m pip install pyyaml pytest
```

```bash
# The catalog: controls/, inspec.yml, inputs.template.yml (~16MB download).
# Pin the ref — the default is `main`, which NIST republishes in place, so an
# unpinned run produces a diff nobody can review. The current pin lives in
# tools/nist_catalog_to_inspec/README.md; bump it in the same commit.
python3 tools/nist_catalog_to_inspec/generate.py --output . --cache .oscal-cache \
  --ref 78650f02ad9321bb7b817846f8fbd4f2bcd620de

# The sample ODP worksheet. Offline and deterministic.
python3 tools/nist_catalog_to_inspec/seed_sample_odps.py

python3 -m pytest tools/nist_catalog_to_inspec/tests/
```

Output is deterministic — no timestamps, no clock reads, stable ordering — so a
NIST republish shows up as a reviewable diff rather than as churn.

## Layout

| Path | What |
| --- | --- |
| `controls/<family>/*.rb` | 2,776 objectives, one file each, grouped by family (`controls/ac/AC-02a.rb`) |
| `inspec.yml` | Profile metadata, plus all 1,600 ODPs declared as inputs |
| `inputs.yml` | The ODP worksheet, pre-filled with samples |
| `inputs.template.yml` | Pristine placeholders, rewritten on every regeneration |
| `tools/nist_catalog_to_inspec/` | The OSCAL → InSpec generator and the ODP seeder |
| `tools/nist_catalog_to_inspec/fedramp_odp_values.yml` | FedRAMP's own parameter assignments, committed rather than fetched |

## How controls are laid out

```
controls/ac/AC-01a_01.rb        control 'AC-01a.[01]'
controls/ac/AC-01a.01.a_07.rb   control 'AC-01a.01(a)[07]'
controls/ac/AC-02.01.rb         control 'AC-02(01)'      # the AC-2(1) enhancement
controls/ca/CA-07_01.rb         control 'CA-07[01]'
```

The **control id is the published SP 800-53A objective label, verbatim**, so an
id here is greppable against the publication and against Heimdall output.

The **filename** is that label with parens flattened to `.` and brackets to `_`.
Those two are not interchangeable: `(01)` is control enhancement one and `[01]`
is determination one, and the catalog really does contain both `CA-07(01)` and
`CA-07[01]`. Flattening both to a dot silently loses one.

Ordering comes free. NIST's own labels are zero-padded — `AC-01`, `AC-02(01)`,
`AU-09(04)` — so keying filenames off them sorts `AC-02` before `AC-10` without
inventing a padding scheme. Sorting matches the publication's own order.

Two objectives (`si-2.7`) ship with prose but no label. They fall back to the
nearest labelled ancestor plus an index — `SI-02(07)c.[01]` — which is stable
across regenerations because catalog order is.

### Selecting things

`--controls` is an **exact match**, so `--controls AC-01a` selects nothing.

```bash
cinc-auditor exec . --input-file inputs.yml --controls 'AC-01a.[01]'  # one objective
cinc-auditor exec . --input-file inputs.yml --tags control_ac_1       # one control
cinc-auditor exec . --input-file inputs.yml --tags baseline_moderate  # one baseline
```

Every objective also carries `tag control:` and `tag objective:` for grouping
downstream.

## Naming

The repository carries no revision; `inspec.yml` does — `name: nist-800-53-rev5`,
per the estate's naming convention. A Rev 5 to Rev 6 uplift bumps `name:`, the
tags and the release tag. The repository name never churns.

## Provenance

| | |
| --- | --- |
| Catalog | [usnistgov/oscal-content](https://github.com/usnistgov/oscal-content) — SP 800-53 Rev 5 catalog and the LOW/MODERATE/HIGH/PRIVACY resolved baselines |
| FedRAMP ODP values | [FedRAMP/rules](https://github.com/FedRAMP/rules) — Consolidated Rules `2026.07.14.01`, released 2026-07-14, retrieved 2026-08-20 |
| Assessment procedures | SP 800-53A Rev 5, from the same OSCAL content |

Baseline membership is a tag (`baseline_low`, `baseline_moderate`,
`baseline_high`, `baseline_privacy`), resolved from NIST's own baseline profiles
rather than asserted here.

## History

This profile and its generator were built in
[`risk-sentinel/sparc-validate`](https://github.com/risk-sentinel/sparc-validate)
(PR #340) and moved here so the catalog stands on its own. It is a
general-purpose artifact with no SPARC-specific content, and it does not belong
inside a consumer overlay repository.

## Licence

See [LICENSE](LICENSE).
