control 'AC-09(01)' do
  impact 0.5
  title "the user is notified, upon successful logon, of the number of unsuccessful logon attempts since the last successful logon."
  desc <<~DESC
    Notify the user, upon successful logon, of the number of unsuccessful logon attempts since the last successful logon.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the user is notified, upon successful logon, of the number of unsuccessful logon attempts since the last successful logon.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing previous logon notification; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing access control policy for previous logon notification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information about the number of unsuccessful logon attempts since the last successful logon allows the user to recognize if the number of unsuccessful logon attempts is consistent with the user’s actual logon attempts.
  GUIDANCE
  tag nist: ['AC-9 (1)']
  tag control: 'AC-9 (1)'
  tag objective: 'AC-09(01)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_9_1: true

  describe 'NIST SP 800-53A Rev 5 objective AC-09(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
