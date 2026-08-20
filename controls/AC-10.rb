control 'AC-10' do
  impact 0.5
  title 'Concurrent Session Control'
  desc <<~DESC
    Limit the number of concurrent sessions for each #{input('ac_10_odp_01')} to #{input('ac_10_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-10 the number of concurrent sessions for each #{input('ac_10_odp_01')} is limited to #{input('ac_10_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing concurrent session control; system design documentation; system configuration settings and associated documentation; security plan; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing access control policy for concurrent session control
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may define the maximum number of concurrent sessions for system accounts globally, by account type, by account, or any combination thereof. For example, organizations may limit the number of concurrent sessions for system administrators or other individuals working in particularly sensitive domains or mission-critical applications. Concurrent session control addresses concurrent sessions for system accounts. It does not, however, address concurrent sessions by single users via multiple system accounts.
  GUIDANCE
  tag nist: ['AC-10']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{ac_10_odp_01 ac_10_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-10' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
