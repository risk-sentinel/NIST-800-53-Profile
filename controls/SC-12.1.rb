control 'SC-12 (1)' do
  impact 0.5
  title 'Availability'
  desc <<~DESC
    Maintain availability of information in the event of the loss of cryptographic keys by users.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-12(01) information availability is maintained in the event of the loss of cryptographic keys by users.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing cryptographic key establishment, management, and recovery; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for cryptographic key establishment or management
      TEST: Mechanisms supporting and/or implementing cryptographic key establishment and management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Escrowing of encryption keys is a common practice for ensuring availability in the event of key loss. A forgotten passphrase is an example of losing a cryptographic key.
  GUIDANCE
  tag nist: ['SC-12 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control SC-12 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
