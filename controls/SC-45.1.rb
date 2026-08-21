control 'SC-45 (1)' do
  impact 0.5
  title 'Synchronization with Authoritative Time Source'
  desc <<~DESC
    (a) Compare the internal system clocks #{input('sc_45_01_odp_01')} with #{input('sc_45_01_odp_02')} ; and
    (b) Synchronize the internal system clocks to the authoritative time source when the time difference is greater than #{input('sc_45_01_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-45(01)(a) the internal system clocks are compared #{input('sc_45_01_odp_01')} with #{input('sc_45_01_odp_02')};
      SC-45(01)(b) the internal system clocks are synchronized with the authoritative time source when the time difference is greater than #{input('sc_45_01_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing time synchronization; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system
      TEST: Mechanisms supporting and/or implementing system time synchronization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Synchronization of internal system clocks with an authoritative source provides uniformity of time stamps for systems with multiple system clocks and systems connected over a network.
  GUIDANCE
  tag nist: ['SC-45 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_45_01_odp_01 sc_45_01_odp_02 sc_45_01_odp_03}

  describe 'NIST SP 800-53 Rev 5 control SC-45 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
