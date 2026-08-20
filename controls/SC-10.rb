control 'SC-10' do
  impact 0.5
  title 'Network Disconnect'
  desc <<~DESC
    Terminate the network connection associated with a communications session at the end of the session or after #{input('sc_10_odp')} of inactivity.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-10 the network connection associated with a communication session is terminated at the end of the session or after #{input('sc_10_odp')} of inactivity.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing network disconnect; system design documentation; security plan; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Mechanisms supporting and/or implementing a network disconnect capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Network disconnect applies to internal and external networks. Terminating network connections associated with specific communications sessions includes de-allocating TCP/IP address or port pairs at the operating system level and de-allocating the networking assignments at the application level if multiple application sessions are using a single operating system-level network connection. Periods of inactivity may be established by organizations and include time periods by type of network access or for specific network accesses.
  GUIDANCE
  tag nist: ['SC-10']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{sc_10_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-10' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
