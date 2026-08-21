control 'AU-03(03)' do
  impact 0.5
  title "personally identifiable information contained in audit records is limited to #{input('au_03_03_odp')} identified in the privacy risk assessment."
  desc <<~DESC
    Limit personally identifiable information contained in audit records to the following elements identified in the privacy risk assessment: #{input('au_03_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      personally identifiable information contained in audit records is limited to #{input('au_03_03_odp')} identified in the privacy risk assessment.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; privacy risk assessment; privacy risk assessment results; procedures addressing content of audit records; system design documentation; system configuration settings and associated documentation; list of organization-defined auditable events; system audit records; third party contracts; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: system audit capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Limiting personally identifiable information in audit records when such information is not needed for operational purposes helps reduce the level of privacy risk created by a system.
  GUIDANCE
  tag nist: ['AU-3 (3)']
  tag control: 'AU-3 (3)'
  tag objective: 'AU-03(03)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_au_3_3: true
  tag odp: %w{au_03_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective AU-03(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
