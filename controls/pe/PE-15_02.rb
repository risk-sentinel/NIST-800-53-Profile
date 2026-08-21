control 'PE-15[02]' do
  impact 0.5
  title "the master shutoff or isolation valves are accessible;"
  desc <<~DESC
    Protect the system from damage resulting from water leakage by providing master shutoff or isolation valves that are accessible, working properly, and known to key personnel.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the master shutoff or isolation valves are accessible;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing water damage protection; facility housing the system; master shutoff valves; list of key personnel with knowledge of location and activation procedures for master shutoff valves for the plumbing system; master shutoff valve documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for system environmental controls; organizational personnel with information security responsibilities
      TEST: Master water-shutoff valves; organizational process for activating master water shutoff
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The provision of water damage protection primarily applies to organizational facilities that contain concentrations of system resources, including data centers, server rooms, and mainframe computer rooms. Isolation valves can be employed in addition to or in lieu of master shutoff valves to shut off water supplies in specific areas of concern without affecting entire organizations.
  GUIDANCE
  tag nist: ['PE-15']
  tag control: 'PE-15'
  tag objective: 'PE-15[02]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_15: true

  describe 'NIST SP 800-53A Rev 5 objective PE-15[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
