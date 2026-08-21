control 'AU-09(05)' do
  impact 0.5
  title "dual authorization is enforced for the #{input('au_09_05_odp_01')} of #{input('au_09_05_odp_02')}."
  desc <<~DESC
    Enforce dual authorization for #{input('au_09_05_odp_01')} of #{input('au_09_05_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      dual authorization is enforced for the #{input('au_09_05_odp_01')} of #{input('au_09_05_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; access control policy and procedures; procedures addressing protection of audit information; system design documentation; system configuration settings and associated documentation; access authorizations; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Mechanisms implementing the enforcement of dual authorization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may choose different selection options for different types of audit information. Dual authorization mechanisms (also known as two-person control) require the approval of two authorized individuals to execute audit functions. To reduce the risk of collusion, organizations consider rotating dual authorization duties to other individuals. Organizations do not require dual authorization mechanisms when immediate responses are necessary to ensure public and environmental safety.
  GUIDANCE
  tag nist: ['AU-9 (5)']
  tag control: 'AU-9 (5)'
  tag objective: 'AU-09(05)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_9_5: true
  tag odp: %w{au_09_05_odp_01 au_09_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AU-09(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
