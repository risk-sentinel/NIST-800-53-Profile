control 'CM-5 (4)' do
  impact 0.5
  title 'Dual Authorization'
  desc <<~DESC
    Enforce dual authorization for implementing changes to #{input('cm_5_4_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-05(04)[01] dual authorization for implementing changes to #{input('cm_05_04_odp_01')} is enforced;
      CM-05(04)[02] dual authorization for implementing changes to #{input('cm_05_04_odp_02')} is enforced.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing access restrictions for changes to the system; configuration management plan; system design documentation; system architecture and configuration documentation; system configuration settings and associated documentation; change control records; system audit records; system component inventory; system information types information; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with dual authorization enforcement responsibilities for implementing system changes; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing access restrictions to change; mechanisms implementing dual authorization enforcement
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations employ dual authorization to help ensure that any changes to selected system components and information cannot occur unless two qualified individuals approve and implement such changes. The two individuals possess the skills and expertise to determine if the proposed changes are correct implementations of approved changes. The individuals are also accountable for the changes. Dual authorization may also be known as two-person control. To reduce the risk of collusion, organizations consider rotating dual authorization duties to other individuals. System-level information includes operational procedures.
  GUIDANCE
  tag nist: ['CM-5 (4)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag odp: %w{cm_05_04_odp_01 cm_05_04_odp_02 cm_5_4_prm_1}

  describe 'NIST SP 800-53 Rev 5 control CM-5 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
