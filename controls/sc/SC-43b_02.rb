control 'SC-43b.[02]' do
  impact 0.5
  title "the use of #{input('sc_43_odp')} is monitored within the system;"
  desc <<~DESC
    a. Establish usage restrictions and implementation guidelines for the following system components: #{input('sc_43_odp')} ; and
    b. Authorize, monitor, and control the use of such components within the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the use of #{input('sc_43_odp')} is monitored within the system;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; usage restrictions; procedures addressing usage restrictions; implementation policy and procedures; authorization records; system monitoring records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system
      TEST: Organizational processes for authorizing, monitoring, and controlling the use of components with usage restrictions; mechanisms supporting and/or implementing, authorizing, monitoring, and controlling the use of components with usage restrictions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Usage restrictions apply to all system components including but not limited to mobile code, mobile devices, wireless access, and wired and wireless peripheral components (e.g., copiers, printers, scanners, optical devices, and other similar technologies). The usage restrictions and implementation guidelines are based on the potential for system components to cause damage to the system and help to ensure that only authorized system use occurs.
  GUIDANCE
  tag nist: ['SC-43']
  tag control: 'SC-43'
  tag objective: 'SC-43b.[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_43: true
  tag odp: %w{sc_43_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-43b.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
