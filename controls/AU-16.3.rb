control 'AU-16 (3)' do
  impact 0.5
  title 'Disassociability'
  desc <<~DESC
    Implement #{input('au_16_03_odp')} to disassociate individuals from audit information transmitted across organizational boundaries.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-16(03) #{input('au_16_03_odp')} are implemented to disassociate individuals from audit information transmitted across organizational boundaries.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing cross-organizational sharing of audit information; policy and/or procedures regarding the deidentification of PII; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for sharing cross-organizational audit information; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms implementing disassociability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Preserving identities in audit trails could have privacy ramifications, such as enabling the tracking and profiling of individuals, but may not be operationally necessary. These risks could be further amplified when transmitting information across organizational boundaries. Implementing privacy-enhancing cryptographic techniques can disassociate individuals from audit information and reduce privacy risk while maintaining accountability.
  GUIDANCE
  tag nist: ['AU-16 (3)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag odp: %w{au_16_03_odp}

  describe 'NIST SP 800-53 Rev 5 control AU-16 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
