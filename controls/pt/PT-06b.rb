control 'PT-06b.' do
  impact 0.5
  title "system of records notices are published in the Federal Register for systems that process information that will be maintained in a Privacy Act system of records;"
  desc <<~DESC
    For systems that process information that will be maintained in a Privacy Act system of records:
      a. Draft system of records notices in accordance with OMB guidance and submit new and significantly modified system of records notices to the OMB and appropriate congressional committees for advance review;
      b. Publish system of records notices in the Federal Register; and
      c. Keep system of records notices accurate, up-to-date, and scoped in accordance with policy.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system of records notices are published in the Federal Register for systems that process information that will be maintained in a Privacy Act system of records;

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; privacy notice; Privacy Act system of records; Federal Register notices; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for Privacy Act system of records maintenance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) requires that federal agencies publish a system of records notice in the Federal Register upon the establishment and/or modification of a [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) system of records. As a general matter, a system of records notice is required when an agency maintains a group of any records under the control of the agency from which information is retrieved by the name of an individual or by some identifying number, symbol, or other identifier. The notice describes the existence and character of the system and identifies the system of records, the purpose(s) of the system, the authority for maintenance of the records, the categories of records maintained in the system, the categories of individuals about whom records are maintained, the routine uses to which the records are subject, and additional details about the system as described in [OMB A-108](#3671ff20-c17c-44d6-8a88-7de203fa74aa).
  GUIDANCE
  tag nist: ['PT-6']
  tag control: 'PT-6'
  tag objective: 'PT-06b.'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pt_6: true

  describe 'NIST SP 800-53A Rev 5 objective PT-06b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
