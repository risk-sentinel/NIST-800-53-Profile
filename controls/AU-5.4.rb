control 'AU-5 (4)' do
  impact 0.5
  title 'Shutdown on Failure'
  desc <<~DESC
    Invoke a #{input('au_05_04_odp_01')} in the event of #{input('au_05_04_odp_02')} , unless an alternate audit logging capability exists.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-05(04) #{input('au_05_04_odp_01')} is/are invoked in the event of #{input('au_05_04_odp_02')} , unless an alternate audit logging capability exists.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing response to audit processing failures; system design documentation; system security plan; privacy plan; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: System capability invoking system shutdown or degraded operational mode in the event of an audit processing failure
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations determine the types of audit logging failures that can trigger automatic system shutdowns or degraded operations. Because of the importance of ensuring mission and business continuity, organizations may determine that the nature of the audit logging failure is not so severe that it warrants a complete shutdown of the system supporting the core organizational mission and business functions. In those instances, partial system shutdowns or operating in a degraded mode with reduced capability may be viable alternatives.
  GUIDANCE
  tag nist: ['AU-5 (4)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag odp: %w{au_05_04_odp_01 au_05_04_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AU-5 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
