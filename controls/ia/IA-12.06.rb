control 'IA-12(06)' do
  impact 0.5
  title "externally proofed identities are accepted #{input('ia_12_06_odp')}."
  desc <<~DESC
    Accept externally-proofed identities at #{input('ia_12_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      externally proofed identities are accepted #{input('ia_12_06_odp')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identity proofing; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; organizational personnel with identification and authentication responsibilities
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    To limit unnecessary re-proofing of identities, particularly of non-PIV users, organizations accept proofing conducted at a commensurate level of assurance by other agencies or organizations. Proofing is consistent with organizational security policy and the identity assurance level appropriate for the system, application, or information accessed. Accepting externally-proofed identities is a fundamental component of managing federated identities across agencies and organizations.
  GUIDANCE
  tag nist: ['IA-12 (6)']
  tag control: 'IA-12 (6)'
  tag objective: 'IA-12(06)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_12_6: true
  tag odp: %w{ia_12_06_odp}

  describe 'NIST SP 800-53A Rev 5 objective IA-12(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
