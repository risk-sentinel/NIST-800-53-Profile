control 'AC-2 (11)' do
  impact 0.5
  title 'Usage Conditions'
  desc <<~DESC
    Enforce #{input('ac_02_11_odp_01')} for #{input('ac_02_11_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-02(11) #{input('ac_02_11_odp_01')} for #{input('ac_02_11_odp_02')} are enforced.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing account management; system design documentation; system configuration settings and associated documentation; system-generated list of system accounts and associated assignments of usage circumstances and/or usage conditions; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing account management functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Specifying and enforcing usage conditions helps to enforce the principle of least privilege, increase user accountability, and enable effective account monitoring. Account monitoring includes alerts generated if the account is used in violation of organizational parameters. Organizations can describe specific conditions or circumstances under which system accounts can be used, such as by restricting usage to certain days of the week, time of day, or specific durations of time.
  GUIDANCE
  tag nist: ['AC-2 (11)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{ac_02_11_odp_01 ac_02_11_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-2 (11)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
