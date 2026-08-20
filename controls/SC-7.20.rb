control 'SC-7 (20)' do
  impact 0.5
  title 'Dynamic Isolation and Segregation'
  desc <<~DESC
    Provide the capability to dynamically isolate #{input('sc_07_20_odp')} from other system components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-07(20) the capability to dynamically isolate #{input('sc_07_20_odp')} from other system components is provided.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; system architecture; system configuration settings and associated documentation; list of system components to be dynamically isolated/segregated from other components of the system; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms supporting and/or implementing the capability to dynamically isolate/segregate system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The capability to dynamically isolate certain internal system components is useful when it is necessary to partition or separate system components of questionable origin from components that possess greater trustworthiness. Component isolation reduces the attack surface of organizational systems. Isolating selected system components can also limit the damage from successful attacks when such attacks occur.
  GUIDANCE
  tag nist: ['SC-7 (20)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_07_20_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-7 (20)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
