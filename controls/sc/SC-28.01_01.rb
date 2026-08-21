control 'SC-28(01)[01]' do
  impact 0.5
  title "cryptographic mechanisms are implemented to prevent unauthorized disclosure of #{input('sc_28_01_odp_01')} at rest on #{input('sc_28_01_odp_02')};"
  desc <<~DESC
    Implement cryptographic mechanisms to prevent unauthorized disclosure and modification of the following information at rest on #{input('sc_28_01_odp_02')}: #{input('sc_28_01_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      cryptographic mechanisms are implemented to prevent unauthorized disclosure of #{input('sc_28_01_odp_01')} at rest on #{input('sc_28_01_odp_02')};

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing the protection of information at rest; system design documentation; system configuration settings and associated documentation; cryptographic mechanisms and associated configuration documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Cryptographic mechanisms implementing confidentiality and integrity protections for information at rest
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The selection of cryptographic mechanisms is based on the need to protect the confidentiality and integrity of organizational information. The strength of mechanism is commensurate with the security category or classification of the information. Organizations have the flexibility to encrypt information on system components or media or encrypt data structures, including files, records, or fields.
  GUIDANCE
  tag nist: ['SC-28 (1)']
  tag control: 'SC-28 (1)'
  tag objective: 'SC-28(01)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sc_28_1: true
  tag odp: %w{sc_28_01_odp_01 sc_28_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SC-28(01)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
