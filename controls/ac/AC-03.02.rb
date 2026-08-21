control 'AC-03(02)' do
  impact 0.5
  title "dual authorization is enforced for #{input('ac_03_02_odp')}."
  desc <<~DESC
    Enforce dual authorization for #{input('ac_03_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      dual authorization is enforced for #{input('ac_03_02_odp')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access enforcement and dual authorization; system design documentation; system configuration settings and associated documentation; list of privileged commands requiring dual authorization; list of actions requiring dual authorization; list of approved authorizations (user privileges); system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Dual authorization mechanisms implementing access control policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Dual authorization, also known as two-person control, reduces risk related to insider threats. Dual authorization mechanisms require the approval of two authorized individuals to execute. To reduce the risk of collusion, organizations consider rotating dual authorization duties. Organizations consider the risk associated with implementing dual authorization mechanisms when immediate responses are necessary to ensure public and environmental safety.
  GUIDANCE
  tag nist: ['AC-3 (2)']
  tag control: 'AC-3 (2)'
  tag objective: 'AC-03(02)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_3_2: true
  tag odp: %w{ac_03_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-03(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
