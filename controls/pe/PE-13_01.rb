control 'PE-13[01]' do
  impact 0.5
  title "fire detection systems are employed;"
  desc <<~DESC
    Employ and maintain fire detection and suppression systems that are supported by an independent energy source.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      fire detection systems are employed;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing fire protection; fire suppression and detection devices/systems; fire suppression and detection devices/systems documentation; test records of fire suppression and detection devices/systems; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for fire detection and suppression devices/systems; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing fire suppression/detection devices/systems
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The provision of fire detection and suppression systems applies primarily to organizational facilities that contain concentrations of system resources, including data centers, server rooms, and mainframe computer rooms. Fire detection and suppression systems that may require an independent energy source include sprinkler systems and smoke detectors. An independent energy source is an energy source, such as a microgrid, that is separate, or can be separated, from the energy sources providing power for the other parts of the facility.
  GUIDANCE
  tag nist: ['PE-13']
  tag control: 'PE-13'
  tag objective: 'PE-13[01]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_13: true

  describe 'NIST SP 800-53A Rev 5 objective PE-13[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
