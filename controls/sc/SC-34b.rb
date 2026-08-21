control 'SC-34b.' do
  impact 0.5
  title "#{input('sc_34_odp_02')} for #{input('sc_34_odp_01')} are loaded and executed from hardware-enforced, read-only media."
  desc <<~DESC
    For #{input('sc_34_odp_01')} , load and execute:
      a. The operating environment from hardware-enforced, read-only media; and
      b. The following applications from hardware-enforced, read-only media: #{input('sc_34_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_34_odp_02')} for #{input('sc_34_odp_01')} are loaded and executed from hardware-enforced, read-only media.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing non-modifiable executable programs; system design documentation; system configuration settings and associated documentation; system architecture; list of operating system components to be loaded from hardware-enforced, read-only media; list of applications to be loaded from hardware-enforced, read-only media; media used to load and execute the system operating environment; media used to load and execute system applications; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel installing, configuring, and/or maintaining the system; system developers/integrators
      TEST: Mechanisms supporting and/or implementing, loading, and executing the operating environment from hardware-enforced, read-only media; mechanisms supporting and/or implementing, loading, and executing applications from hardware-enforced, read-only media
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The operating environment for a system contains the code that hosts applications, including operating systems, executives, or virtual machine monitors (i.e., hypervisors). It can also include certain applications that run directly on hardware platforms. Hardware-enforced, read-only media include Compact Disc-Recordable (CD-R) and Digital Versatile Disc-Recordable (DVD-R) disk drives as well as one-time, programmable, read-only memory. The use of non-modifiable storage ensures the integrity of software from the point of creation of the read-only image. The use of reprogrammable, read-only memory can be accepted as read-only media provided that integrity can be adequately protected from the point of initial writing to the insertion of the memory into the system, and there are reliable hardware protections against reprogramming the memory while installed in organizational systems.
  GUIDANCE
  tag nist: ['SC-34']
  tag control: 'SC-34'
  tag objective: 'SC-34b.'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_34: true
  tag odp: %w{sc_34_odp_01 sc_34_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SC-34b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
