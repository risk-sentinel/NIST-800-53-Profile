control 'PE-10b.' do
  impact 0.5
  title "emergency shutoff switches or devices are placed in #{input('pe_10_odp_02')} to facilitate access for authorized personnel;"
  desc <<~DESC
    a. Provide the capability of shutting off power to #{input('pe_10_odp_01')} in emergency situations;
    b. Place emergency shutoff switches or devices in #{input('pe_10_odp_02')} to facilitate access for authorized personnel; and
    c. Protect emergency power shutoff capability from unauthorized activation.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      emergency shutoff switches or devices are placed in #{input('pe_10_odp_02')} to facilitate access for authorized personnel;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing power source emergency shutoff; emergency shutoff controls or switches; locations housing emergency shutoff switches and devices; security safeguards protecting the emergency power shutoff capability from unauthorized activation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for the emergency power shutoff capability (both implementing and using the capability); organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing emergency power shutoff
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Emergency power shutoff primarily applies to organizational facilities that contain concentrations of system resources, including data centers, mainframe computer rooms, server rooms, and areas with computer-controlled machinery.
  GUIDANCE
  tag nist: ['PE-10']
  tag control: 'PE-10'
  tag objective: 'PE-10b.'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_10: true
  tag odp: %w{pe_10_odp_01 pe_10_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PE-10b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
