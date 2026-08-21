#!/usr/bin/env python3
"""Seed inputs.yml with illustrative ODP values.

Three sources, in precedence order, and every value is attributable to one of
them:

  1. FedRAMP's published parameter assignments, committed alongside this
     script in fedramp_odp_values.yml. Authoritative, and the only values here
     that anyone else decided.
  2. The placeholder's own selection list. `[selection (one): remove; disable]`
     becomes `remove` -- the first option, always, because a mechanical rule is
     auditable and always reads grammatically where a cleverer one would not.
  3. An archetype sample, keyed off the placeholder text.

Anything that matches none of the three keeps its placeholder. A control whose
ODP is genuinely system-specific is better left visibly unanswered than filled
with something invented that reads like a decision.
"""
import json, re, sys, collections, pathlib

import yaml

HERE = pathlib.Path(__file__).resolve().parent
FEDRAMP_YAML = HERE / "fedramp_odp_values.yml"
TARGET = "inputs.yml"
SOURCE = "inputs.template.yml"

# ---- 1. FedRAMP's own assignments ------------------------------------------
# Committed, not fetched: a generator that needs the network cannot be a drift
# gate. Missing or empty is a hard error rather than a warning -- silently
# dropping the only authoritative values here and shipping 1600 samples would
# look identical to success.
if not FEDRAMP_YAML.exists():
    raise SystemExit(f"missing {FEDRAMP_YAML}")
raw = yaml.safe_load(FEDRAMP_YAML.read_text()) or {}
if not raw:
    raise SystemExit(f"{FEDRAMP_YAML} declared no values")
# ac-06.01_odp.02 -> ac_06_01_odp_02
fedramp = {re.sub(r"[.\-]", "_", k): v for k, v in raw.items()}

# ---- 3. Archetype samples ---------------------------------------------------
# The values that recur across several placeholders are named, so a change of
# house style is one edit rather than a search-and-replace that misses one and
# leaves two archetypes disagreeing about the same thing.
TIME_PERIOD = "30 days"
ROLES = "the system owner, the ISSO, and the ISSM"

# Exact-match first, then substring, so a specific placeholder beats a generic.
EXACT = {
    "[organization-defined frequency]": "annually",
    "[organization-defined time period]": TIME_PERIOD,
    "[organization-defined time-period]": TIME_PERIOD,
    "[organization-defined personnel or roles]": ROLES,
    "[organization-defined personnel]": "the system owner and the ISSO",
    "[organization-defined official]":
        "the Information System Security Officer (ISSO)",
    "[organization-defined automated mechanisms]":
        "the enterprise SIEM, configuration management, and ticketing systems",
    "[organization-defined mechanisms]":
        "the enterprise SIEM and configuration management systems",
    "[organization-defined systems or system components]":
        "all systems and components within the authorization boundary",
    "[organization-defined system components]":
        "all components within the authorization boundary",
    "[organization-defined systems]":
        "all systems within the authorization boundary",
    "[organization-defined events]":
        "a security incident, a significant change to the system, or an "
        "assessment finding",
    "[organization-defined controls]":
        "the controls in the applicable FedRAMP baseline",
    "[organization-defined actions]":
        "notify the ISSO and record the event in the ticketing system",
    "[organization-defined information]":
        "federal customer data and system security documentation",
    "[organization-defined conditions]":
        "a change in role, a change in employment status, or a security incident",
    "[organization-defined techniques]":
        "automated scanning, log correlation, and configuration baselines",
    "[organization-defined number]": "3",
    "[organization-defined measures]":
        "encryption in transit and at rest, and least-privilege access control",
    "[organization-defined software]":
        "software on the organization-approved software list",
    "[organization-defined subjects]": "authenticated users and service accounts",
    "[organization-defined objects]": "files, directories, and database records",
    "[organization-defined security attributes]":
        "confidentiality level, data owner, and handling caveat",
    "[organization-defined privacy attributes]":
        "PII category, data subject, and retention period",
    "[organization-defined security and privacy attributes]":
        "confidentiality level, PII category, and data owner",
    "[organization-defined circumstances]":
        "a confirmed security incident or a legal hold",
    "[organization-defined elements]":
        "the elements listed in the system security plan",
}

# Ordered: first match wins, so specific needles come before generic ones.
SUBSTRING = [
    ("frequenc", "annually"),                       # frequency / frequencies
    ("time period", TIME_PERIOD),
    ("time-period", TIME_PERIOD),
    ("personnel or roles", ROLES),
    ("incident response personnel", "the incident response team and the ISSO"),
    ("personnel", "the system owner and the ISSO"),
    ("roles and responsibilities",
     "system owner, ISSO, ISSM, and system administrator"),
    ("roles", ROLES),
    ("official", "the Information System Security Officer (ISSO)"),
    ("automated mechanism",
     "the enterprise SIEM and configuration management systems"),
    ("audit event",
     "authentication attempts, privilege escalation, and configuration changes"),
    ("audit record", "audit records generated by systems in the boundary"),
    ("system media", "removable media and backup media holding federal data"),
    ("digital media", "removable USB media, external drives, and backup tapes"),
    ("controlled area",
     "areas within the facility that require badge access"),
    ("location", "the primary data centre region and the failover region"),
    ("external organization",
     "partner organizations with a signed interconnection agreement"),
    ("security function", "the security functions listed in the system security plan"),
    ("sanitization",
     "NIST SP 800-88 clear, purge, or destroy, matched to the media type"),
    ("test", "the assessment procedures in NIST SP 800-53A"),
    ("number", "3"),
]

# Every remaining placeholder is `[organization-defined <noun phrase>]`, so the
# fallback answers in the one way that is true regardless of system: it points
# at where the real definition lives. That reads grammatically in the control
# prose AND tells a reader this is a pointer, not a decision someone made.
# Deliberately not a regex. Two attempts at one were both super-linear, for two
# different reasons: `\s+` next to `.+` lets both claim the same whitespace, and
# an unanchored trailing-parenthetical pattern is retried at every position.
# What this actually does -- strip the brackets, check a prefix, strip a
# suffix -- is prefix/suffix work, and saying so in string operations is linear
# by construction and leaves nothing to reason about.
#
# Verified against the original regex across all 1,600 real placeholders: zero
# differences, including the ones whose own text contains a bracket
# (`[organization-defined event types (subset of AU-02_ODP[01])]`).
GENERIC_PREFIX = "organization-defined"


def generic_noun(placeholder: str) -> str | None:
    """The noun phrase in `[organization-defined <noun>]`, or None.

    A trailing parenthetical is dropped: NIST writes
    `[organization-defined event types (subset of AU-02_ODP[01])]`, and the
    aside is a cross-reference rather than part of the noun.
    """
    if not (placeholder.startswith("[") and placeholder.endswith("]")):
        return None
    inner = placeholder[1:-1]
    if inner[:len(GENERIC_PREFIX)].lower() != GENERIC_PREFIX:
        return None
    rest = inner[len(GENERIC_PREFIX):]
    if not rest[:1].isspace():      # `[organization-definedX]` is not a match
        return None
    noun = rest.strip()
    if noun.endswith(")"):
        open_at = noun.rfind("(")
        # Only an unnested aside, matching what `\([^)]*\)$` accepted.
        if open_at != -1 and ")" not in noun[open_at + 1:-1]:
            noun = noun[:open_at].rstrip()
    return noun or None

# ---- 2b. Context overrides --------------------------------------------------
# A handful where the archetype sample is grammatical but implausible enough to
# mislead: "report suspected incidents within 30 days" is not a sample, it is a
# wrong answer. Each was checked against the control's actual prose so the
# phrase fits the sentence it lands in.
OVERRIDES = {
    "ir_06_odp_01": "one hour",
    "au_11_odp": "one year, with at least 90 days immediately available",
    "ac_11_odp_01": "initiating a device lock after 15 minutes of inactivity",
    "ac_02_03_odp_01": "24 hours",
    "ac_02_03_odp_02": "35 days",
    "ac_07_odp_02": "15-minute period",
    "ac_07_odp_04": "30 minutes",
    "ac_12_odp": "30 minutes of inactivity",
    "ia_05_01_odp_02": "60 days",
    # Literal on purpose, not TIME_PERIOD. This one was read against SI-2's own
    # sentence and happens to land on the same number as the archetype; tying it
    # to the constant would mean a change of house style silently rewrites a
    # hand-checked answer.
    "si_02_odp": "30 days",
    "ra_05_odp_01": "monthly for infrastructure and weekly for web applications",
}

# The `\s*` before `(?P<opts>.*)` let both match the same leading spaces, which
# backtracks. Dropped: every option is .strip()ed where it is consumed, so the
# whitespace was never load-bearing.
SELECTION = re.compile(r"^\[selection\s*\((?P<card>[^)]*)\):(?P<opts>.*)\]$",
                       re.IGNORECASE)
LINE = re.compile(r"^(?P<key>[a-z0-9_]+): '(?P<val>.*)'$")


def yaml_single(value: str) -> str:
    return "'" + value.replace("'", "''") + "'"


def sample_for(key, placeholder):
    """(value, source) or (None, 'placeholder')."""
    if key in fedramp:
        return fedramp[key], "fedramp"

    if key in OVERRIDES:
        return OVERRIDES[key], "override"

    m = SELECTION.match(placeholder)
    if m:
        opts = [o.strip() for o in m.group("opts").split(";") if o.strip()]
        if opts:
            return opts[0], "selection"

    if placeholder in EXACT:
        return EXACT[placeholder], "archetype"

    low = placeholder.lower()
    for needle, value in SUBSTRING:
        if needle in low:
            return value, "archetype"

    noun = generic_noun(placeholder)
    if noun:
        return f"the {noun} defined in the system security plan", "generic"

    return None, "placeholder"


# Control prose sometimes supplies the article itself -- "Designate an
# #{input('ac_01_odp_04')}" -- so a value beginning "the ..." renders as
# "Designate an the Information System Security Officer". 254 references across
# 86 ODPs do this. Found by scanning the generated controls rather than guessed,
# because the set changes whenever NIST republishes.
ARTICLE = re.compile(r"\b(?:a|an|the)\s+#\{input\('([a-z0-9_]+)'\)\}", re.IGNORECASE)
LEADING_ARTICLE = re.compile(r"^(?:a|an|the)\s+", re.IGNORECASE)

article_preceded = set()
scanned = 0
# rglob, not glob: controls live in per-family subdirectories (controls/ac/...).
# A non-recursive glob here matches nothing, finds no collisions, and silently
# changes every affected ODP value -- a wrong answer that raises no error.
for control in pathlib.Path("controls").rglob("*.rb"):
    article_preceded.update(ARTICLE.findall(control.read_text()))
    scanned += 1
if not scanned:
    raise SystemExit(
        "scanned 0 control files under controls/ -- the article-collision fixup "
        "silently degrades to a no-op when this happens, so it is fatal. Either "
        "controls/ is missing (run generate.py first) or its layout moved and "
        "this scan needs updating.")


def dearticle(key, value):
    """Drop a leading article where the sentence already has one."""
    if key in article_preceded:
        return LEADING_ARTICLE.sub("", value, count=1)
    return value


declared = {m.group("key") for m in
             (LINE.match(l.rstrip("\n")) for l in open(SOURCE)) if m}
unknown = sorted(set(OVERRIDES) - declared)
if unknown:
    raise SystemExit(
        f"override(s) address no declared ODP: {', '.join(unknown)}. "
        "An override that matches nothing is silently ignored, which is exactly "
        "the failure mode this file is careful about everywhere else.")

counts = collections.Counter()
out = []
for line in open(SOURCE):
    m = LINE.match(line.rstrip("\n"))
    if not m:
        out.append(line)
        continue
    key, placeholder = m.group("key"), m.group("val").replace("''", "'")
    value, source = sample_for(key, placeholder)
    if value is not None:
        value = dearticle(key, value)
    counts[source] += 1
    out.append(f"{key}: {yaml_single(value if value is not None else placeholder)}\n")

total = sum(counts.values())

HEADER = f"""\
# Organization-defined parameters (ODPs) for NIST SP 800-53 Rev 5.
#
# ############################################################################
# #  THESE ARE ILLUSTRATIVE SAMPLES. THEY ARE NOT THIS ORGANIZATION'S ODPs.  #
# ############################################################################
#
# The file exists so the profile renders as readable control language out of
# the box, and so a reader can see the SHAPE of a real answer. Every value
# below still has to be replaced with what the organization has actually
# defined before this profile informs an SSP, an assessment, or an ATO
# package. A sample that survives into an authorization package is a finding.
#
# Where each value came from (all {total} of them):
#
#   {counts['fedramp']:>4}  FedRAMP's own published parameter assignments. The only values
#         here that someone else decided; treat the rest as placeholders with
#         better grammar.
#   {counts['override']:>4}  Hand-checked against the control's own sentence, where the
#         archetype sample was grammatical but wrong enough to mislead --
#         "report suspected incidents within 30 days" is not a sample.
#   {counts['selection']:>4}  Taken from the placeholder's own selection list -- the FIRST
#         option, always. A mechanical rule is auditable, and it always reads
#         grammatically where a cleverer one would not.
#   {counts['archetype']:>4}  Archetype samples: 'annually' for a frequency, '30 days' for a
#         time period, and so on. Typical of a FedRAMP system, and chosen for
#         nothing else.
#   {counts['generic']:>4}  Pointers rather than answers -- 'the X defined in the system
#         security plan'. Used where inventing content would read like a
#         decision nobody made. These are the ones to fill in first.
#
# Regenerate with:
#
#   python3 tools/nist_catalog_to_inspec/seed_sample_odps.py
#
# inputs.template.yml holds the pristine placeholders and is rewritten on every
# catalog regeneration. This file is seeded from it and is never overwritten by
# the catalog generator, so edits made here survive.
#
# Values interpolate into the control language, so a filled-in worksheet makes
# each control read the way this system actually implements it.

"""

# Drop the template's own header; everything before the first key is replaced.
first_key = next(i for i, line in enumerate(out) if LINE.match(line.rstrip("\n")))
out = [HEADER] + out[first_key:]

# ---- resolve nested OSCAL parameter references ------------------------------
# NIST's OSCAL nests parameter references inside selection option text:
#
#   [selection (one or more): lock the account or node for
#    {{ insert: param, ac-07_odp.04 }} ; ...]
#
# The catalog generator emits those raw, so picking an option can carry an
# `{{ insert: param, ... }}` straight into the rendered control prose. 49
# placeholders in the template contain one.
#
# Resolving them here rather than in the generator keeps this migration to one
# concern; the generator leaking OSCAL syntax into user-facing prose is a real
# defect and is filed separately.
INSERT = re.compile(r"\{\{\s*insert:\s*param,\s*([a-z0-9._\-]+)\s*\}\}",
                    re.IGNORECASE)

seeded = {}
for line in out:
    m = LINE.match(line.rstrip("\n"))
    if m:
        seeded[m.group("key")] = m.group("val").replace("''", "'")

unresolved = set()


def resolve_inserts(value):
    def sub(m):
        ref = re.sub(r"[.\-]", "_", m.group(1))
        if ref in seeded:
            return seeded[ref]
        unresolved.add(m.group(1))
        return m.group(0)
    for _ in range(4):                      # nested references terminate fast
        new = INSERT.sub(sub, value)
        if new == value:
            return new
        value = new
    return value


resolved_count = 0
for i, line in enumerate(out):
    m = LINE.match(line.rstrip("\n"))
    if not m:
        continue
    val = m.group("val").replace("''", "'")
    if not INSERT.search(val):
        continue
    out[i] = f"{m.group('key')}: {yaml_single(resolve_inserts(val))}\n"
    resolved_count += 1

counts["nested_refs_resolved"] = resolved_count
if unresolved:
    # Loud, not silent: a directive we could not resolve would otherwise ship
    # as OSCAL syntax inside an SSP-facing sentence.
    raise SystemExit(
        f"unresolved OSCAL parameter references: {', '.join(sorted(unresolved))}")

open(TARGET, "w").writelines(out)
print(json.dumps({"total": total, **counts}, indent=2))
print(f"seeded: {total - counts['placeholder']}  left as placeholder: {counts['placeholder']}")
