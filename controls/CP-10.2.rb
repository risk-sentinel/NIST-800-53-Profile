control 'CP-10 (2)' do
  impact 0.5
  title 'Transaction Recovery'
  desc <<~DESC
    Implement transaction recovery for systems that are transaction-based.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-10(02) transaction recovery is implemented for systems that are transaction-based.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system recovery and reconstitution; contingency plan; system design documentation; system configuration settings and associated documentation; contingency plan test documentation; contingency plan test results; system transaction recovery records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibility for transaction recovery; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing transaction recovery capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Transaction-based systems include database management systems and transaction processing systems. Mechanisms supporting transaction recovery include transaction rollback and transaction journaling.
  GUIDANCE
  tag nist: ['CP-10 (2)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control CP-10 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
