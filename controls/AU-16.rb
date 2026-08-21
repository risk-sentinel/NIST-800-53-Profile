control 'AU-16' do
  impact 0.5
  title 'Cross-organizational Audit Logging'
  desc <<~DESC
    Employ #{input('au_16_odp_01')} for coordinating #{input('au_16_odp_02')} among external organizations when audit information is transmitted across organizational boundaries.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-16 #{input('au_16_odp_01')} for coordinating #{input('au_16_odp_02')} among external organizations when audit information is transmitted across organizational boundaries are employed.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing methods for coordinating audit information among external organizations; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for coordinating audit information among external organizations; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms implementing cross-organizational auditing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    When organizations use systems or services of external organizations, the audit logging capability necessitates a coordinated, cross-organization approach. For example, maintaining the identity of individuals who request specific services across organizational boundaries may often be difficult, and doing so may prove to have significant performance and privacy ramifications. Therefore, it is often the case that cross-organizational audit logging simply captures the identity of individuals who issue requests at the initial system, and subsequent systems record that the requests originated from authorized individuals. Organizations consider including processes for coordinating audit information requirements and protection of audit information in information exchange agreements.
  GUIDANCE
  tag nist: ['AU-16']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag odp: %w{au_16_odp_01 au_16_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AU-16' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
