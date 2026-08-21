control 'PE-18' do
  impact 0.5
  title "system components are positioned within the facility to minimize potential damage from #{input('pe_18_odp')} and to minimize the opportunity for unauthorized access."
  desc <<~DESC
    Position system components within the facility to minimize potential damage from #{input('pe_18_odp')} and to minimize the opportunity for unauthorized access.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system components are positioned within the facility to minimize potential damage from #{input('pe_18_odp')} and to minimize the opportunity for unauthorized access.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing the positioning of system components; documentation providing the location and position of system components within the facility; locations housing system components within the facility; list of physical and environmental hazards with the potential to damage system components within the facility; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for positioning system components; organizational personnel with information security responsibilities
      TEST: Organizational processes for positioning system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Physical and environmental hazards include floods, fires, tornadoes, earthquakes, hurricanes, terrorism, vandalism, an electromagnetic pulse, electrical interference, and other forms of incoming electromagnetic radiation. Organizations consider the location of entry points where unauthorized individuals, while not being granted access, might nonetheless be near systems. Such proximity can increase the risk of unauthorized access to organizational communications using wireless packet sniffers or microphones, or unauthorized disclosure of information.
  GUIDANCE
  tag nist: ['PE-18']
  tag control: 'PE-18'
  tag objective: 'PE-18'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_pe_18: true
  tag odp: %w{pe_18_odp}

  describe 'NIST SP 800-53A Rev 5 objective PE-18' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
