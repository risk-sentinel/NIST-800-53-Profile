control 'PE-06(01)[02]' do
  impact 0.5
  title "physical access to the facility where the system resides is monitored using physical surveillance equipment."
  desc <<~DESC
    Monitor physical access to the facility where the system resides using physical intrusion alarms and surveillance equipment.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      physical access to the facility where the system resides is monitored using physical surveillance equipment.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access monitoring; physical access logs or records; physical access monitoring records; physical access log reviews; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access monitoring responsibilities; organizational personnel with incident response responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for monitoring physical intrusion alarms and surveillance equipment; mechanisms supporting and/or implementing physical access monitoring; mechanisms supporting and/or implementing physical intrusion alarms and surveillance equipment
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Physical intrusion alarms can be employed to alert security personnel when unauthorized access to the facility is attempted. Alarm systems work in conjunction with physical barriers, physical access control systems, and security guards by triggering a response when these other forms of security have been compromised or breached. Physical intrusion alarms can include different types of sensor devices, such as motion sensors, contact sensors, and broken glass sensors. Surveillance equipment includes video cameras installed at strategic locations throughout the facility.
  GUIDANCE
  tag nist: ['PE-6 (1)']
  tag control: 'PE-6 (1)'
  tag objective: 'PE-06(01)[02]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_6_1: true

  describe 'NIST SP 800-53A Rev 5 objective PE-06(01)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
