control 'SC-41' do
  impact 0.5
  title "#{input('sc_41_odp_01')} are #{input('sc_41_odp_02')} disabled or removed on #{input('sc_41_odp_03')}."
  desc <<~DESC
    #{input('sc_41_odp_02')} disable or remove #{input('sc_41_odp_01')} on the following systems or system components: #{input('sc_41_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_41_odp_01')} are #{input('sc_41_odp_02')} disabled or removed on #{input('sc_41_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; access control policy and procedures; procedures addressing port and input/output device access; system design documentation; system configuration settings and associated documentation; system architecture; systems or system components; list of connection ports or input/output devices to be physically disabled or removed on systems or system components; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system
      TEST: Mechanisms supporting and/or implementing the disabling of connection ports or input/output devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Connection ports include Universal Serial Bus (USB), Thunderbolt, and Firewire (IEEE 1394). Input/output (I/O) devices include compact disc and digital versatile disc drives. Disabling or removing such connection ports and I/O devices helps prevent the exfiltration of information from systems and the introduction of malicious code from those ports or devices. Physically disabling or removing ports and/or devices is the stronger action.
  GUIDANCE
  tag nist: ['SC-41']
  tag control: 'SC-41'
  tag objective: 'SC-41'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_41: true
  tag odp: %w{sc_41_odp_01 sc_41_odp_02 sc_41_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SC-41' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
