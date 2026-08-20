# NIST-800-53-Profile

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=risk-sentinel_NIST-800-53-Profile)](https://sonarcloud.io/summary/new_code?id=risk-sentinel_NIST-800-53-Profile)

Every NIST SP 800-53 Revision 5 control as an InSpec (cinc-auditor) profile.
**1,014 controls, 1,600 organization-defined parameters, and no checks.**

Each control carries the NIST control statement, the SP 800-53A assessment
procedure, and the discussion text — then skips. A run reports the whole catalog
as *Not Reviewed* rather than as passing, because a profile that asserts nothing
and reports green is worse than no profile at all.

## What this is for

- **A shell to attach real checks to,** one control at a time, without anyone
  retyping control language out of the publication.
- **A denominator.** An HDF artifact showing the full control set and how much
  of it is still unassessed, next to whatever scanning profiles actually cover.
- **An ODP worksheet.** 1,600 organization-defined parameters in one file
  instead of prose scattered across an SSP. Fill it in and the control text
  rewrites itself to say what your system actually does.

Most of 800-53 is organizational — policy, agreements, personnel, training — so
only a minority of these controls will ever carry an executable check. The ones
that stay manual get assessed and attested; this skeleton is where that shows up
rather than being quietly absent.

## Quick start

```bash
git clone https://github.com/risk-sentinel/NIST-800-53-Profile.git
cd NIST-800-53-Profile

# The whole catalog, with the sample ODP values filled in.
cinc-auditor exec . --input-file inputs.yml --reporter cli

# Just one baseline.
cinc-auditor exec . --input-file inputs.yml --tags baseline_moderate

# One control, to see what the prose looks like once ODPs interpolate.
cinc-auditor exec . --input-file inputs.yml --controls AC-1
```

No dependencies to vendor: the profile has no `depends:` and no custom
resources, so a clone runs as-is.

### What a first run looks like

Every control reports **skipped**, with the rationale attached:

```
  ↺  AC-1: Policy and Procedures
     ↺  Not automated. This control is a skeleton: it carries the NIST control
        language and the SP 800-53A assessment procedure but performs no check.
```

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

```bash
# The catalog: controls/, inspec.yml, inputs.template.yml (~16MB download).
python3 tools/nist_catalog_to_inspec/generate.py --output . --cache .oscal-cache

# The sample ODP worksheet. Pure, offline, deterministic.
python3 tools/nist_catalog_to_inspec/seed_sample_odps.py

python3 -m pytest tools/nist_catalog_to_inspec/tests/
```

Output is deterministic — no timestamps, no clock reads, stable ordering — so a
NIST republish shows up as a reviewable diff rather than as churn.

## Layout

| Path | What |
| --- | --- |
| `controls/*.rb` | 1,014 controls, one file each (`AC-2.rb`, `AC-2.1.rb`) |
| `inspec.yml` | Profile metadata, plus all 1,600 ODPs declared as inputs |
| `inputs.yml` | The ODP worksheet, pre-filled with samples |
| `inputs.template.yml` | Pristine placeholders, rewritten on every regeneration |
| `tools/nist_catalog_to_inspec/` | The OSCAL → InSpec generator and the ODP seeder |
| `tools/nist_catalog_to_inspec/fedramp_odp_values.yml` | FedRAMP's own parameter assignments, committed rather than fetched |

## Naming

The repository carries no revision; `inspec.yml` does — `name: nist-800-53-rev5`,
per the estate's naming convention. A Rev 5 to Rev 6 uplift bumps `name:`, the
tags and the release tag. The repository name never churns.

## Provenance

| | |
| --- | --- |
| Catalog | [usnistgov/oscal-content](https://github.com/usnistgov/oscal-content) — SP 800-53 Rev 5 catalog and the LOW/MODERATE/HIGH/PRIVACY resolved baselines |
| FedRAMP ODP values | [FedRAMP/rules](https://github.com/FedRAMP/rules) — Consolidated Rules for 2026, `2026.07.14.01` |
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
