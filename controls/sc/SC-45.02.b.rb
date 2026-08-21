control 'SC-45(02)(b)' do
  impact 0.5
  title "the internal system clocks are synchronized to the secondary authoritative time source if the primary authoritative time source is unavailable."
  desc <<~DESC
    (a) Identify a secondary authoritative time source that is in a different geographic region than the primary authoritative time source; and
    (b) Synchronize the internal system clocks to the secondary authoritative time source if the primary authoritative time source is unavailable.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the internal system clocks are synchronized to the secondary authoritative time source if the primary authoritative time source is unavailable.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing time synchronization; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system
      TEST: Mechanisms supporting and/or implementing system time synchronization with secondary authoritative time sources
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    It may be necessary to employ geolocation information to determine that the secondary authoritative time source is in a different geographic region.
  GUIDANCE
  tag nist: ['SC-45 (2)']
  tag control: 'SC-45 (2)'
  tag objective: 'SC-45(02)(b)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_45_2: true

  describe 'NIST SP 800-53A Rev 5 objective SC-45(02)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
