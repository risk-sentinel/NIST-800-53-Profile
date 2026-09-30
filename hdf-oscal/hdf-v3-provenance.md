# Evidence Provenance in HDF v3

Three views of the same question: where did this piece of evidence come from, and which authorization boundary does it count toward? Field names follow the HDF v3.7.0 specification.

In v3 the Results `components[]` array is the target array. The legacy SAF `target` supplement (`id`, `type`, `boundary`) is absorbed into a `components[]` entry, with `boundary` moved to `labels`.

> Legend: teal = `hdf-results`, ochre = `hdf-system`, white = provenance question or join key.

## 1. The target array as a provenance record

*hdf-results*

Each entry in `components[]` is typed (`repository`, `containerImage`, `cloudAccount` and ten others), and each type carries its own identity fields. With `labels`, `externalIds`, and the document-level `systemRef`, `runner` and `tool`, one Results file can say which boundary, code, build, account, asset record and environment produced the finding.

```mermaid
flowchart LR
  subgraph R["hdf-results (one assessment run)"]
    direction TB
    sysref["systemRef<br/>portal-prod.hdf-system.json"]
    runner["runner · tool · generator<br/>CI job execution context"]
    subgraph C["components[] : the target array"]
      direction TB
      repo["type: repository<br/>url · branch · commit"]
      img["type: containerImage<br/>registry · repository · tag · integrity[]"]
      acct["type: cloudAccount<br/>provider · accountId · region<br/>externalIds { cmdb, aws }"]
      lbl["labels (on every component)<br/>system · component · environment · team"]
    end
  end

  Q1(["Boundary / ATO system"])
  Q2(["Pipeline / CI job"])
  Q3(["Source repository"])
  Q4(["Built artifact"])
  Q5(["Cloud account"])
  Q6(["CMDB / asset record"])
  Q7(["Environment and owner"])

  sysref -->|systemRef| Q1
  lbl -.->|labels.system| Q1
  runner -->|"runner · tool · generator<br/>+ custom label pipeline-id"| Q2
  repo -->|url · branch · commit| Q3
  img -->|"integrity[] digest · tag"| Q4
  acct -->|accountId · region| Q5
  acct -->|"externalIds.cmdb / .emass"| Q6
  lbl -->|"labels.environment · labels.team · owner"| Q7

  classDef results fill:#e2f1ef,stroke:#0d7069,color:#16202a
  classDef q fill:#ffffff,stroke:#16202a,color:#16202a
  class sysref,runner,repo,img,acct,lbl results
  class Q1,Q2,Q3,Q4,Q5,Q6,Q7 q
  style R fill:#f3faf9,stroke:#0d7069
  style C fill:#e2f1ef,stroke:#0d7069
```

*Every provenance question is answered by a schema field, not by free text. Typed component fields carry identity (commit, digest, account); labels carry grouping (boundary, environment, team); externalIds carry the link to the system of record.*

| Provenance question | HDF v3 field(s) | Kind |
|---|---|---|
| Boundary / ATO system | `systemRef` · `labels.system` | document link · well-known label |
| Pipeline / CI job | `runner` · `tool` · `generator` · `labels.pipeline-id` | root fields · custom label |
| Source repository | `repository` component: `url` · `branch` · `commit` | typed component |
| Built artifact | `containerImage` component: `registry` · `tag` · `integrity[]` | typed component |
| Cloud account | `cloudAccount` component: `provider` · `accountId` · `region` | typed component |
| CMDB / asset record | `externalIds.cmdb` · `externalIds.emass` | external ID map |
| Environment and owner | `labels.environment` · `labels.team` · `owner` | well-known labels · identity |

> **Note:** `pipeline-id` is a custom label. The five well-known label keys are `system`, `component`, `environment`, `region` and `team`.

<details>
<summary>Example components[] with provenance</summary>

```json
{
  "systemRef": "portal-prod.hdf-system.json",
  "components": [
    { "type": "repository", "name": "portal-api",
      "url": "https://gitlab.example.gov/portal/portal-api",
      "branch": "main", "commit": "4f9c2e1",
      "labels": { "system": "Enterprise Portal", "component": "API",
                  "environment": "production", "team": "platform-eng",
                  "pipeline-id": "88231" } },
    { "type": "containerImage", "name": "portal-api:1.8.2",
      "registry": "registry.example.gov", "repository": "portal/portal-api", "tag": "1.8.2",
      "integrity": [ { "algorithm": "sha256", "value": "9b2d…" } ] },
    { "type": "cloudAccount", "name": "portal-govcloud",
      "provider": "aws", "accountId": "123456789012", "region": "us-gov-west-1",
      "externalIds": { "cmdb": "CI0045", "aws": "123456789012" } }
  ]
}
```

</details>

<details>
<summary>Stamp labels in the pipeline</summary>

```bash
# stamp labels at conversion time, or afterward in the pipeline
hdf convert --from nessus scan.nessus -o results.json \
  --labels system="Enterprise Portal",environment=production,region=us-gov-west-1
hdf label set results.json component=API pipeline-id=$CI_PIPELINE_ID
```

</details>

## 2. The System document as the provenance authority

*hdf-system*

Results say what was scanned. The System document says what the boundary contains, and it is the authority those claims are checked against. Components here require a `componentId`, `identifier` ties the system to its FedRAMP or eMASS record, `dataFlows` show which edges cross the boundary, and `controlDesignations` record who provides each control.

```mermaid
flowchart LR
  users(["Internet users<br/>external: true"])
  idp(["Enterprise IdP<br/>another hdf-system<br/>{ systemRef, componentId }"])

  subgraph S["hdf-system: Enterprise Portal · identifier FR2405012345 (fedramp) · moderate · authorized"]
    direction LR
    subgraph B["authorization boundary (boundaryDescription)"]
      direction TB
      web["WebTier · application<br/>id 7f3c…a91e<br/>targetSelector labels.component=WebTier"]
      api["API Service · containerPlatform<br/>id 9a4e…41c0<br/>targetSelector labels.component=API"]
      db["Portal DB · database<br/>id 2d88…0b17<br/>externalIds.cmdb CI0112"]
      repo["Source repo · repository<br/>id 5e20…f3aa<br/>boms[] sbom (cyclonedx)"]
      acct["GovCloud Account · cloudAccount<br/>id c14a…e704<br/>us-gov-west-1 · externalIds.cmdb CI0045"]
    end
    cd["controlDesignations[]<br/>SC-7 common · providedBy<br/>IA-2 common · systemRef<br/>AC-2 hybrid · inheritedBy"]
  end

  users -->|"dataFlow https :443"| web
  web -->|"dataFlow https · mTLS"| api
  api -->|"dataFlow jdbc :5432"| db
  api -->|"dataFlow OAuth2 (cross-system)"| idp
  cd -.->|"SC-7 providedBy"| acct
  cd -.->|"IA-2 systemRef"| idp
  cd -.->|"AC-2 inheritedBy"| api
  cd -.->|"AC-2 inheritedBy"| web

  classDef sys fill:#f6ebdc,stroke:#9a5a08,color:#16202a
  classDef ext fill:#f3f6f7,stroke:#56636f,stroke-dasharray:4 3,color:#16202a
  class web,api,db,repo,acct,cd sys
  class users,idp ext
  style S fill:#fdf8f1,stroke:#9a5a08
  style B fill:#fdf8f1,stroke:#9a5a08,stroke-dasharray:7 5
```

*The System document is the authoritative inventory. Its componentIds are the keys that Plans, Amendments, Evidence Packages and control designations bind to, and its dataFlows show every edge that leaves the boundary.*

| System field | Provenance role |
|---|---|
| `systemId` · `identifier` · `identifierScheme` | Stable identity; link to the FedRAMP package or eMASS record |
| `components[].componentId` | Required here; the key Plans, Amendments, Evidence Packages and control designations bind to |
| `components[].targetSelector` | Label selector that pulls matching Results components into this System component |
| `components[].externalIds` | Link to CMDB, AWS, Azure or eMASS inventory |
| `dataFlows[]` | Edges between components, to another system (`{systemRef, componentId}`), or to an external endpoint |
| `controlDesignations[]` | `common` / `system-specific` / `hybrid`, with `providedBy`, `systemRef` or `inheritedBy` |
| `boms[]` | System-scoped BOMs; component-scoped BOMs attach on the component |

<details>
<summary>Example hdf-system (abridged)</summary>

```json
{
  "name": "Enterprise Portal",
  "systemId": "3b1f6a0e-2c4d-4e8a-9f1b-6d2e8c47c7d2",
  "identifier": "FR2405012345", "identifierScheme": "fedramp",
  "categorizationLevel": "moderate", "authorizationStatus": "authorized",
  "components": [
    { "componentId": "7f3c2b10-5d4e-4a61-8c2f-0b9e1d6aa91e",
      "name": "WebTier", "type": "application",
      "targetSelector": { "labels.component": "WebTier" },
      "baselineRefs": [ "RHEL9-STIG" ],
      "externalIds": { "cmdb": "CI0101" } },
    { "componentId": "c14a9e62-7d0b-4f38-8e5a-2b6f3d91e704",
      "name": "GovCloud Account", "type": "cloudAccount",
      "provider": "aws", "accountId": "123456789012", "region": "us-gov-west-1",
      "externalIds": { "cmdb": "CI0045" } }
  ],
  "dataFlows": [
    { "from": "7f3c2b10-5d4e-4a61-8c2f-0b9e1d6aa91e",
      "to":   "9a4e7c21-3f5b-4d8e-a2c6-7e1f0d9b41c0",
      "protocol": "https", "port": 443, "authentication": "mTLS",
      "direction": "unidirectional" },
    { "from": "9a4e7c21-3f5b-4d8e-a2c6-7e1f0d9b41c0",
      "to": { "systemRef": "enterprise-idp.hdf-system.json",
              "componentId": "0e61d2c8-4a97-4b3e-9c15-8f2a7d6b3e90" },
      "protocol": "https", "authentication": "OAuth2" }
  ],
  "controlDesignations": [
    { "controlId": "SC-7", "designation": "common",
      "description": "Boundary protection provided by the GovCloud VPC",
      "providedBy": "c14a9e62-7d0b-4f38-8e5a-2b6f3d91e704" }
  ]
}
```

</details>

## 3. Correlating Results targets with the System

*hdf-results ⇄ hdf-system*

Results and System meet at five join points. `systemRef` ties the whole file to a boundary. After that, each Results component resolves to a System component in one of three ways: a label match through `targetSelector`, an exact `componentId`, or a shared `externalIds` value. The baselines that ran are then checked against the component's `baselineRefs`.

```mermaid
flowchart LR
  subgraph R["hdf-results"]
    direction TB
    r0["systemRef<br/>portal-prod.hdf-system.json"]
    r1["host · ip-10-0-1-50<br/>labels.component: WebTier<br/>labels.environment: production"]
    r2["containerImage · portal-api:1.8.2<br/>componentId: 9a4e…41c0"]
    r3["cloudAccount · 123456789012<br/>externalIds.cmdb: CI0045"]
    r4["baselines[].name<br/>RHEL9-STIG → results[].status"]
  end

  subgraph S["hdf-system"]
    direction TB
    s0["systemId · name<br/>3b1f…c7d2 · Enterprise Portal"]
    s1["WebTier · application<br/>targetSelector { labels.component: WebTier }"]
    s2["API Service · containerPlatform<br/>componentId: 9a4e…41c0"]
    s3["GovCloud Account<br/>externalIds.cmdb: CI0045"]
    s4["components[].baselineRefs<br/>[ RHEL9-STIG ]"]
  end

  r0 -->|"systemRef → System (document scope)"| s0
  r1 <-->|"labels ↔ targetSelector (dynamic, all keys match)"| s1
  r2 <-->|"componentId = componentId (exact, strongest)"| s2
  r3 <-.->|"externalIds.cmdb (pipeline convention)"| s3
  r4 <-->|"baseline name ↔ baselineRefs"| s4

  roll["System-aware roll-up<br/>hdf diff --system portal-prod.hdf-system.json feb.json mar.json<br/>→ per-component compliance<br/>componentId also scopes Amendments, Plan and Evidence Package refs"]
  R --> roll
  S --> roll

  classDef results fill:#e2f1ef,stroke:#0d7069,color:#16202a
  classDef sys fill:#f6ebdc,stroke:#9a5a08,color:#16202a
  classDef out fill:#ffffff,stroke:#16202a,color:#16202a
  class r0,r1,r2,r3,r4 results
  class s0,s1,s2,s3,s4 sys
  class roll out
  style R fill:#f3faf9,stroke:#0d7069
  style S fill:#fdf8f1,stroke:#9a5a08
```

*Solid joins are defined by the spec; the dashed externalIds join is a convention. All joins feed `hdf diff --system` for a per-component roll-up.*

| Join | Results side | System side | Strength |
|---|---|---|---|
| Document scope | `systemRef` | the System file (`systemId`, `name`) | defined by spec |
| Label selector | `components[].labels` | `components[].targetSelector` | defined by spec · dynamic, all keys must match |
| Component identity | `components[].componentId` | `components[].componentId` | defined by spec · exact, strongest |
| System of record | `components[].externalIds.cmdb` | `components[].externalIds.cmdb` | pipeline convention |
| Baseline coverage | `baselines[].name` | `components[].baselineRefs` | defined by spec |

> **Note:** The schema defines the `externalIds` map (`aws`, `azure`, `cmdb`, `emass`) but does not treat it as a correlation key; enforce it in your pipeline if you rely on it. Prefer `componentId` when the producer can stamp it, and use `targetSelector` so new hosts join their System component through labels without an edit to the System document.

<details>
<summary>Pipeline commands for the join</summary>

```bash
# 1. Stamp the label the System's targetSelector expects
hdf label set results.json system="Enterprise Portal" component=WebTier environment=production

# 2. Inspect what will match
hdf label show results.json

# 3. Roll results up against the boundary
hdf diff --system portal-prod.hdf-system.json feb-scan.json mar-scan.json
```

</details>

---

Example identifiers, UUIDs and account numbers are illustrative.

**Sources**

- [HDF v3.7.0 Specification](https://mitre.github.io/hdf-libs/docs/specification/hdf-specification.html)
- [Well-Known Label Keys Reference](https://mitre.github.io/hdf-libs/docs/guides/label-keys-reference.html)
- [hdf-libs #354: SAF supplement normalization](https://github.com/mitre/hdf-libs/pull/354)
- [hdf-libs #370: hdf target / passthrough commands](https://github.com/mitre/hdf-libs/pull/370)
