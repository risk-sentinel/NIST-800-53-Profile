control 'AC-7 (4)' do
  impact 0.5
  title 'Use of Alternate Authentication Factor'
  desc <<~DESC
    (a) Allow the use of #{input('ac_07_04_odp_01')} that are different from the primary authentication factors after the number of organization-defined consecutive invalid logon attempts have been exceeded; and
    (b) Enforce a limit of #{input('ac_07_04_odp_02')} consecutive invalid logon attempts through use of the alternative factors by a user during a #{input('ac_07_04_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-07(04)(a) #{input('ac_07_04_odp_01')} that are different from the primary authentication factors are allowed to be used after the number of organization-defined consecutive invalid logon attempts have been exceeded;
      AC-07(04)(b) a limit of #{input('ac_07_04_odp_02')} consecutive invalid logon attempts through the use of the alternative factors by the user during a #{input('ac_07_04_odp_03')} is enforced.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing unsuccessful logon attempts for primary and alternate authentication factors; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing access control policy for unsuccessful logon attempts
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The use of alternate authentication factors supports the objective of availability and allows a user who has inadvertently been locked out to use additional authentication factors to bypass the lockout.
  GUIDANCE
  tag nist: ['AC-7 (4)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_07_04_odp_01 ac_07_04_odp_02 ac_07_04_odp_03}

  describe 'NIST SP 800-53 Rev 5 control AC-7 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
