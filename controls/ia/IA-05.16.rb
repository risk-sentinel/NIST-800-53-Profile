control 'IA-05(16)' do
  impact 0.5
  title "the issuance of #{input('ia_05_16_odp_01')} is required to be conducted #{input('ia_05_16_odp_02')} before #{input('ia_05_16_odp_03')} with authorization by #{input('ia_05_16_odp_04')}."
  desc <<~DESC
    Require that the issuance of #{input('ia_05_16_odp_01')} be conducted #{input('ia_05_16_odp_02')} before #{input('ia_05_16_odp_03')} with authorization by #{input('ia_05_16_odp_04')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the issuance of #{input('ia_05_16_odp_01')} is required to be conducted #{input('ia_05_16_odp_02')} before #{input('ia_05_16_odp_03')} with authorization by #{input('ia_05_16_odp_04')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identifier management; system security plan; system design documentation; mechanisms providing dynamic binding of identifiers and authenticators; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with identification and authentication management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms supporting and/or implementing account management capability; mechanisms supporting and/or implementing identification and authentication management capabilities for the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Issuing authenticators in person or by a trusted external party enhances and reinforces the trustworthiness of the identity proofing process.
  GUIDANCE
  tag nist: ['IA-5 (16)']
  tag control: 'IA-5 (16)'
  tag objective: 'IA-05(16)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_5_16: true
  tag odp: %w{ia_05_16_odp_01 ia_05_16_odp_02 ia_05_16_odp_03 ia_05_16_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective IA-05(16)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
