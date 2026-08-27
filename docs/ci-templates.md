# CI templates — how they are built, and why

Each profile repository carries its own copy of the CI templates under
`.github/workflows/` and `ci/gitlab/`. This page holds the design reasoning, so
the templates themselves can stay short enough to read before using them.

## Required configuration

Values that identify *your* environment have no defaults, and the templates stop
immediately when one is missing. A default would be worse than a failure: an
unset boundary does not error, it files your results under somebody else's label
while the pipeline reports success.

### The two ways to run this

**Clone on the fly.** Your pipeline clones the profile and runs it. Everything
comes from the calling pipeline's inputs or variables; nothing in the profile is
edited.

**Clone and keep.** You fork or clone the profile, edit `inputs/mine.yml` for
your environment, commit it, and point `inputs_file` at it. Values that are
stable for you live in your copy; the rest still come from the pipeline.

Both paths use the same contract below. The only difference is where the values
come from.

### Inputs

| Input | Required | Default | Notes |
|---|---|---|---|
| `target` | **yes** | — | What is being assessed: account alias, host, resource. Not an ARN |
| `boundary` | **yes** | — | Labels the evidence and decides where it lands in the evidence store |
| `profile_name` | **yes** | — | Must match `name:` in the profile's `inspec.yml` |
| `profile_version` | **yes** | — | Must match `version:` in the profile's `inspec.yml` |
| `inputs_file` | no | `inputs/example.yml` | **Set this.** The default runs with example values, which is rarely what you want. The template fails if the path does not exist |
| `aws_region` | **yes** | — | Region for `aws://` scans and cloud-evidence reads. A wrong region reads an empty account and reports a clean result, so there is no safe default |
| `target_uri` | no | per profile | `aws://` for cloud APIs, `local://` on the host being assessed, `ssh://user@host` for a remote one |
| `target_type` | no | `cloudAccount` | Recorded in the audit record |
| `scan_type`, `scan_mode` | no | per profile | Recorded in the audit record; self-asserted |
| `benchmark`, `benchmark_version` | no | empty | Recorded when the profile implements a published benchmark |
| `image` | no | the pinned auditor image | Public on Docker Hub; override to pin your own build |
| `job_name` | no | per template | Rename to include a template more than once |

### Variables (GitHub, push-triggered workflows)

Settings -> Secrets and variables -> Actions -> Variables:

| Variable | Required | Notes |
|---|---|---|
| `EVIDENCE_BOUNDARY` | **yes** | Same meaning as the `boundary` input |
| `EVIDENCE_BUCKET` | when emitting to S3 | Only read when an emit role is configured |
| `SONAR_ORGANIZATION` | no | Defaults to the repository owner |

### Secrets

| Secret | Required | Notes |
|---|---|---|
| `SONAR_TOKEN` | for the SonarQube job | Read-scoped; without it there is nothing to fetch |
| `AWS_REGION` | when emitting to S3 | No default. The credential step is `continue-on-error`, so an empty region would skip the emit silently; the preflight fails instead |
| `<REPO>_EMIT_ARN` | to emit to S3 | Assumed via OIDC, write-scoped to this repository's prefix |
| `DOCKERHUB_USERNAME` / `DOCKERHUB_TOKEN` | **no** | The auditor image is public and pulls anonymously. These only raise the shared rate limit, and the login step is skipped when they are absent |

### What happens when something is missing

- A missing **required input** is rejected before the job starts: GitHub refuses
  the `workflow_call`, GitLab refuses the `include` at pipeline creation.
- A missing **`EVIDENCE_BOUNDARY`** fails at the first step of the job, naming
  the variable to set.
- A missing **`inputs_file`** fails before the scan, naming the path it looked
  for — rather than surfacing later as an empty result.
- A missing **region** is rejected with the other required inputs, and checked
  again at the preflight when an emit role is configured.
- Missing **Docker Hub credentials** are not an error; the pull goes anonymous.
- With no **emit role**, the workflows still convert, validate, and upload the
  HDF as a build artifact. `EVIDENCE_BOUNDARY` is still required in that mode,
  because the boundary is part of the evidence rather than part of the
  destination.

## Why every repository has its own copy

The obvious design is one shared reusable workflow that every repository calls.
It does not work here, and on GitHub it is not a preference but a hard limit: a
**public** repository cannot use a workflow from a **private** or **internal**
one. Every public consumer fails at validation — a 0-second, 0-job run with no
logs and nothing to read.

So the logic lives in full in each repository. That is deliberately not DRY. A
team cloning one of these repositories gets a working evidence pipeline with no
dependency they cannot satisfy: copy the file, change the configuration block,
done.

## Why the logic is in YAML rather than a script

A consumer on GitLab pulls the pattern in with `include:`, which brings YAML and
nothing else. A helper script sitting in `tools/` would simply not exist on their
runner, and the same is true of a GitHub caller using `uses:`. Putting the logic
in the YAML is what makes the pattern portable between forges, and between
"include it" and "clone it on the fly".

The cost is that `.github/workflows/exec-evidence.yml` and
`ci/gitlab/exec-evidence.yml` carry the same shell. That duplication is
intentional and preferable to a dependency a consumer cannot satisfy.

## Order of steps in the evidence workflows

    create passthrough -> execute -> convert (gate) -> apply -> label (gate)
    -> validate (gate) -> display

The audit record is built **before** the scan, because that is when the honest
start time and the pipeline provenance are known. Only the facts that cannot
exist until afterwards — finish time, the digest of the produced artifact, and
the outcome counts — are added at the end.

## Why the GitLab templates publish an artifact rather than pushing to S3

The GitHub jobs emit to an evidence bucket via OIDC using an AWS-provided
action. The GitLab equivalent needs `id_tokens` plus
`aws sts assume-role-with-web-identity`, and a trust policy that accepts a GitLab
issuer. There is no GitLab instance here to validate that against, and shipping
an untested credential flow that fails open is worse than shipping none.

To add it, take the emit step from the GitHub workflow and swap the credential
configuration.

## Why the secret-scan HDF job is a caller rather than a copy

It was a copy, and the copy skipped the upload entirely when the scanner found
nothing. A clean scan is the normal case, so affected repositories emitted
nothing, ever — and an empty prefix is byte-for-byte what a broken pipeline
leaves behind. The evidence read as unevidenced, correctly.

The reusable emits a one-control HDF recording the execution even on a clean run,
so "we scanned it and it was clean" is something the evidence can finally say.
It is a caller rather than a copy because fixing a copy costs one pull request
per repository; fixing the reusable costs one in total.

It never runs on `pull_request`: a fork PR would run it with write-ish intent,
and the evidence stream should reflect only what landed on the default branch.
