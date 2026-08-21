control 'AT-03(01)' do
  impact 0.5
  title "#{input('at_03_01_odp_01')} are provided with initial and refresher training #{input('at_03_01_odp_02')} in the employment and operation of environmental controls."
  desc <<~DESC
    Provide #{input('at_03_01_odp_01')} with initial and #{input('at_03_01_odp_02')} training in the employment and operation of environmental controls.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('at_03_01_odp_01')} are provided with initial and refresher training #{input('at_03_01_odp_02')} in the employment and operation of environmental controls.

    Assessment methods and objects:
      EXAMINE: Security and privacy awareness and training policy; procedures addressing security and privacy training implementation; security and privacy training curriculum; security and privacy training materials; system security plan; privacy plan; training records; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for role-based security and privacy training; organizational personnel with responsibilities for employing and operating environmental controls
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Environmental controls include fire suppression and detection devices or systems, sprinkler systems, handheld fire extinguishers, fixed fire hoses, smoke detectors, temperature or humidity, heating, ventilation, air conditioning, and power within the facility.
  GUIDANCE
  tag nist: ['AT-3 (1)']
  tag control: 'AT-3 (1)'
  tag objective: 'AT-03(01)'
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{}
  tag control_at_3_1: true
  tag odp: %w{at_03_01_odp_01 at_03_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AT-03(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
