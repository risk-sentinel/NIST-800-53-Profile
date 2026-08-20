control 'AC-7' do
  impact 0.5
  title 'Unsuccessful Logon Attempts'
  desc <<~DESC
    a. Enforce a limit of #{input('ac_07_odp_01')} consecutive invalid logon attempts by a user during a #{input('ac_07_odp_02')} ; and
    b. Automatically #{input('ac_07_odp_03')} when the maximum number of unsuccessful attempts is exceeded.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-07a. a limit of #{input('ac_07_odp_01')} consecutive invalid logon attempts by a user during #{input('ac_07_odp_02')} is enforced;
      AC-07b. automatically #{input('ac_07_odp_03')} when the maximum number of unsuccessful attempts is exceeded.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing unsuccessful logon attempts; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security responsibilities; system developers; system/network administrators
      TEST: Mechanisms implementing access control policy for unsuccessful logon attempts
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The need to limit unsuccessful logon attempts and take subsequent action when the maximum number of attempts is exceeded applies regardless of whether the logon occurs via a local or network connection. Due to the potential for denial of service, automatic lockouts initiated by systems are usually temporary and automatically release after a predetermined, organization-defined time period. If a delay algorithm is selected, organizations may employ different algorithms for different components of the system based on the capabilities of those components. Responses to unsuccessful logon attempts may be implemented at the operating system and the application levels. Organization-defined actions that may be taken when the number of allowed consecutive invalid logon attempts is exceeded include prompting the user to answer a secret question in addition to the username and password, invoking a lockdown mode with limited user capabilities (instead of full lockout), allowing users to only logon from specified Internet Protocol (IP) addresses, requiring a CAPTCHA to prevent automated attacks, or applying user profiles such as location, time of day, IP address, device, or Media Access Control (MAC) address. If automatic system lockout or execution of a delay algorithm is not implemented in support of the availability objective, organizations consider a combination of other actions to help prevent brute force attacks. In addition to the above, organizations can prompt users to respond to a secret question before the number of allowed unsuccessful logon attempts is exceeded. Automatically unlocking an account after a specified period of time is generally not permitted. However, exceptions may be required based on operational mission or need.
  GUIDANCE
  tag nist: ['AC-7']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ac_07_odp_01 ac_07_odp_02 ac_07_odp_03}

  describe 'NIST SP 800-53 Rev 5 control AC-7' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
