# CI templates — how they are built, and why

Each profile repository carries its own copy of the CI templates under
`.github/workflows/` and `ci/gitlab/`. This page holds the design reasoning, so
the templates themselves can stay short enough to read before using them.

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
