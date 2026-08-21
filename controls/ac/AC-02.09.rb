control 'AC-02(09)' do
  impact 0.5
  title "the use of shared and group accounts is only permitted if #{input('ac_02_09_odp')} are met."
  desc <<~DESC
    Only permit the use of shared and group accounts that meet #{input('ac_02_09_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the use of shared and group accounts is only permitted if #{input('ac_02_09_odp')} are met.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing account management; system design documentation; system configuration settings and associated documentation; system-generated list of shared/group accounts and associated roles; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing management of shared/group accounts
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Before permitting the use of shared or group accounts, organizations consider the increased risk due to the lack of accountability with such accounts.
  GUIDANCE
  tag nist: ['AC-2 (9)']
  tag control: 'AC-2 (9)'
  tag objective: 'AC-02(09)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_2_9: true
  tag odp: %w{ac_02_09_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-02(09)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
