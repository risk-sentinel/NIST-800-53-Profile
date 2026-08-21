control 'PE-14b.' do
  impact 0.5
  title "environmental control levels are monitored #{input('pe_14_odp_04')}."
  desc <<~DESC
    a. Maintain #{input('pe_14_odp_01')} levels within the facility where the system resides at #{input('pe_14_odp_03')} ; and
    b. Monitor environmental control levels #{input('pe_14_odp_04')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      environmental control levels are monitored #{input('pe_14_odp_04')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing temperature and humidity control; temperature and humidity controls; facility housing the system; temperature and humidity controls documentation; temperature and humidity records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for system environmental controls; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing the maintenance and monitoring of temperature and humidity levels
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The provision of environmental controls applies primarily to organizational facilities that contain concentrations of system resources (e.g., data centers, mainframe computer rooms, and server rooms). Insufficient environmental controls, especially in very harsh environments, can have a significant adverse impact on the availability of systems and system components that are needed to support organizational mission and business functions.
  GUIDANCE
  tag nist: ['PE-14']
  tag control: 'PE-14'
  tag objective: 'PE-14b.'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_14: true
  tag odp: %w{pe_14_odp_01 pe_14_odp_03 pe_14_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective PE-14b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
