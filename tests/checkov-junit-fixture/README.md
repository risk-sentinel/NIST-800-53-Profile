# checkov JUnit XML fixtures

Real checkov output, from synthetic Terraform. For developing a junit2hdf
converter against something that behaves like the tool actually behaves.

| File | Shape |
| --- | --- |
| `checkov-default.junit.xml` | default run — 34 tests, 17 failures, **0 skipped** |
| `checkov-baseline-as-skipped.junit.xml` | `--baseline` + `--output-baseline-as-skipped` — 17 tests, 0 failures, **17 skipped** |
| `src/` | the Terraform that produced them, plus the generated `.checkov.baseline` |

Generated with checkov 3.2.521.

## Why synthetic Terraform

The obvious move is to scan a real IaC repo and commit the output. That output
embeds the scanned code — every failing check carries a snippet of it — along
with module layout and resource names. This repository is public; the
infrastructure repo it would have come from is not.

The Terraform in `src/` is therefore written to be deliberately non-compliant in
varied ways, so the output exercises the shapes a converter has to handle
without disclosing anything: passes and failures in one suite, a resource inside
a module (for the `classname` path), a description containing escaped quotes
(for XML escaping), and an inline `# checkov:skip=` (see below).

## Two things that will bite a converter

**1. Suppressions are invisible by default.** `skipped="0"` in the default file
is not "nothing was suppressed" — checkov does not render suppressions as JUnit
skips at all unless you pass `--output-baseline-as-skipped`. The fixture proves
it: `src/main.tf` carries an inline `# checkov:skip=CKV_AWS_23` and the default
output still reports zero skips and zero `<skipped>` elements.

That matters for HDF, where a suppressed control is `Not Applicable` with a
justification, not a silent absence. A converter reading only the default output
cannot distinguish "passed" from "suppressed" — the information is not in the
document.

The second file shows the other shape. Note it is a **different document**, not
a superset: baselined findings move out of `<failure>` and into `<skipped>` with
`message="baseline-skipped"`, so tests drops 34 → 17 and failures 17 → 0. Both
shapes are worth a test case.

**2. Everything is packed into the `name` string.**

```xml
<testcase name="[NONE][CKV_AWS_24] Ensure no security groups allow ingress from 0.0.0.0:0 to port 22"
          classname="/main.tf.aws_security_group.wide_open" file="/main.tf">
```

- `[NONE]` is **severity**, empty because severity comes from the Prisma/Bridgecrew
  platform and there is no API key. With a key it carries a real value, so a
  parser must not assume the literal `NONE`.
- The check id is only available by parsing that string. The JSON output has it
  as a field; the JUnit form does not.
- `classname` is `<file>.<resource address>`, module path included
  (`/modules/storage/main.tf.module.storage.aws_s3_bucket.module_bucket`). A CI
  viewer will render those dots as a package hierarchy.
- The `<failure>` body is free text: resource, file with line range, guideline
  URL, then the code snippet. Line numbers live only in there.

Also worth knowing: `time="0.0"` on every case — checkov emits no per-test
timing, so any duration a dashboard shows is meaningless.

## Regenerating

```bash
cd src

# default
checkov -d . --framework terraform --output junitxml \
  --output-file-path ../out/ --quiet

# baseline-as-skipped
checkov -d . --framework terraform --baseline .checkov.baseline \
  --output junitxml --output-baseline-as-skipped \
  --output-file-path ../out-baseline/ --quiet
```

Both write `results_junitxml.xml`; rename to match the filenames above.

A checkov version bump can change check ids, wording, and which checks exist at
all, so counts here are tied to 3.2.521. If they shift after an upgrade, that is
the tool moving, not the fixture rotting — regenerate and note the version.
