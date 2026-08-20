control 'AC-4 (4)' do
  impact 0.5
  title 'Flow Control of Encrypted Information'
  desc <<~DESC
    Prevent encrypted information from bypassing #{input('ac_04_04_odp_01')} by #{input('ac_04_04_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-04(04) encrypted information is prevented from bypassing #{input('ac_04_04_odp_01')} by #{input('ac_04_04_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Flow control mechanisms include content checking, security policy filters, and data type identifiers. The term encryption is extended to cover encoded data not recognized by filtering mechanisms.
  GUIDANCE
  tag nist: ['AC-4 (4)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{ac_04_04_odp_01 ac_04_04_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-4 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
