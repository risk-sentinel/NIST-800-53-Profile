control 'IA-12(04)' do
  impact 0.5
  title "the validation and verification of identity evidence is conducted in person before a designated registration authority."
  desc <<~DESC
    Require that the validation and verification of identity evidence be conducted in person before a designated registration authority.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the validation and verification of identity evidence is conducted in person before a designated registration authority.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identity proofing; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; organizational personnel with identification and authentication responsibilities
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In-person proofing reduces the likelihood of fraudulent credentials being issued because it requires the physical presence of individuals, the presentation of physical identity documents, and actual face-to-face interactions with designated registration authorities.
  GUIDANCE
  tag nist: ['IA-12 (4)']
  tag control: 'IA-12 (4)'
  tag objective: 'IA-12(04)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_ia_12_4: true

  describe 'NIST SP 800-53A Rev 5 objective IA-12(04)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
