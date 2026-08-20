control 'SC-15' do
  impact 0.5
  title 'Collaborative Computing Devices and Applications'
  desc <<~DESC
    a. Prohibit remote activation of collaborative computing devices and applications with the following exceptions: #{input('sc_15_odp')} ; and
    b. Provide an explicit indication of use to users physically present at the devices.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-15a. remote activation of collaborative computing devices and applications is prohibited except #{input('sc_15_odp')};
      SC-15b. an explicit indication of use is provided to users physically present at the devices.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing collaborative computing; access control policy and procedures; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with responsibilities for managing collaborative computing devices
      TEST: Mechanisms supporting and/or implementing the management of remote activation of collaborative computing devices; mechanisms providing an indication of use of collaborative computing devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Collaborative computing devices and applications include remote meeting devices and applications, networked white boards, cameras, and microphones. The explicit indication of use includes signals to users when collaborative computing devices and applications are activated.
  GUIDANCE
  tag nist: ['SC-15']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{sc_15_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-15' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
