control 'PE-23b.' do
  impact 0.5
  title "for existing facilities, physical and environmental hazards are considered in the organizational risk management strategy."
  desc <<~DESC
    a. Plan the location or site of the facility where the system resides considering physical and environmental hazards; and
    b. For existing facilities, consider the physical and environmental hazards in the organizational risk management strategy.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      for existing facilities, physical and environmental hazards are considered in the organizational risk management strategy.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; physical site planning documents; organizational assessment of risk; contingency plan; risk mitigation strategy documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with site selection responsibilities for the facility housing the system; organizational personnel with risk mitigation responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for site planning
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Physical and environmental hazards include floods, fires, tornadoes, earthquakes, hurricanes, terrorism, vandalism, an electromagnetic pulse, electrical interference, and other forms of incoming electromagnetic radiation. The location of system components within the facility is addressed in [PE-18](#pe-18).
  GUIDANCE
  tag nist: ['PE-23']
  tag control: 'PE-23'
  tag objective: 'PE-23b.'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_23: true

  describe 'NIST SP 800-53A Rev 5 objective PE-23b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
