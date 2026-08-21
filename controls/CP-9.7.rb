control 'CP-9 (7)' do
  impact 0.5
  title 'Dual Authorization for Deletion or Destruction'
  desc <<~DESC
    Enforce dual authorization for the deletion or destruction of #{input('cp_09_07_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-09(07) dual authorization for the deletion or destruction of #{input('cp_09_07_odp')} is enforced.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system backup; contingency plan; system design documentation; system configuration settings and associated documentation; system generated list of dual authorization credentials or rules; logs or records of deletion or destruction of backup information; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system backup responsibilities; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing dual authorization; mechanisms supporting and/or implementing the deletion/destruction of backup information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Dual authorization ensures that deletion or destruction of backup information cannot occur unless two qualified individuals carry out the task. Individuals deleting or destroying backup information possess the skills or expertise to determine if the proposed deletion or destruction of information reflects organizational policies and procedures. Dual authorization may also be known as two-person control. To reduce the risk of collusion, organizations consider rotating dual authorization duties to other individuals.
  GUIDANCE
  tag nist: ['CP-9 (7)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag odp: %w{cp_09_07_odp}

  describe 'NIST SP 800-53 Rev 5 control CP-9 (7)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
