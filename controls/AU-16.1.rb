control 'AU-16 (1)' do
  impact 0.5
  title 'Identity Preservation'
  desc <<~DESC
    Preserve the identity of individuals in cross-organizational audit trails.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-16(01) the identity of individuals in cross-organizational audit trails is preserved.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing cross-organizational audit trails; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with cross-organizational audit responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms implementing cross-organizational auditing (if applicable)
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Identity preservation is applied when there is a need to be able to trace actions that are performed across organizational boundaries to a specific individual.
  GUIDANCE
  tag nist: ['AU-16 (1)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AU-16 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
