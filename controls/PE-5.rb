control 'PE-5' do
  impact 0.5
  title 'Access Control for Output Devices'
  desc <<~DESC
    Control physical access to output from #{input('pe_05_odp')} to prevent unauthorized individuals from obtaining the output.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-05 physical access to output from #{input('pe_05_odp')} is controlled to prevent unauthorized individuals from obtaining the output.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing access control for display medium; facility layout of system components; actual displays from system components; list of output devices and associated outputs requiring physical access controls; physical access control logs or records for areas containing output devices and related outputs; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for access control to output devices; mechanisms supporting and/or implementing access control to output devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Controlling physical access to output devices includes placing output devices in locked rooms or other secured areas with keypad or card reader access controls and allowing access to authorized individuals only, placing output devices in locations that can be monitored by personnel, installing monitor or screen filters, and using headphones. Examples of output devices include monitors, printers, scanners, audio devices, facsimile machines, and copiers.
  GUIDANCE
  tag nist: ['PE-5']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{pe_05_odp}

  describe 'NIST SP 800-53 Rev 5 control PE-5' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
