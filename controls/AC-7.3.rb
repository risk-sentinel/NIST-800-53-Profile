control 'AC-7 (3)' do
  impact 0.5
  title 'Biometric Attempt Limiting'
  desc <<~DESC
    Limit the number of unsuccessful biometric logon attempts to #{input('ac_07_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-07(03) unsuccessful biometric logon attempts are limited to #{input('ac_07_03_odp')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing unsuccessful logon attempts on biometric devices; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing access control policy for unsuccessful logon attempts
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Biometrics are probabilistic in nature. The ability to successfully authenticate can be impacted by many factors, including matching performance and presentation attack detection mechanisms. Organizations select the appropriate number of attempts for users based on organizationally-defined factors.
  GUIDANCE
  tag nist: ['AC-7 (3)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_07_03_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-7 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
