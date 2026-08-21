control 'CP-09(08)' do
  impact 0.5
  title "cryptographic mechanisms are implemented to prevent unauthorized disclosure and modification of #{input('cp_09_08_odp')}."
  desc <<~DESC
    Implement cryptographic mechanisms to prevent unauthorized disclosure and modification of #{input('cp_09_08_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      cryptographic mechanisms are implemented to prevent unauthorized disclosure and modification of #{input('cp_09_08_odp')}.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system backup; contingency plan; system design documentation; system configuration settings and associated documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system backup responsibilities; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing cryptographic protection of backup information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The selection of cryptographic mechanisms is based on the need to protect the confidentiality and integrity of backup information. The strength of mechanisms selected is commensurate with the security category or classification of the information. Cryptographic protection applies to system backup information in storage at both primary and alternate locations. Organizations that implement cryptographic mechanisms to protect information at rest also consider cryptographic key management solutions.
  GUIDANCE
  tag nist: ['CP-9 (8)']
  tag control: 'CP-9 (8)'
  tag objective: 'CP-09(08)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_9_8: true
  tag odp: %w{cp_09_08_odp}

  describe 'NIST SP 800-53A Rev 5 objective CP-09(08)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
