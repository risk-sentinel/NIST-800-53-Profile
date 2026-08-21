control 'SC-42(01)' do
  impact 0.5
  title "the system is configured so that data or information collected by the #{input('sc_42_01_odp')} is only reported to authorized individuals or roles."
  desc <<~DESC
    Verify that the system is configured so that data or information collected by the #{input('sc_42_01_odp')} is only reported to authorized individuals or roles.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the system is configured so that data or information collected by the #{input('sc_42_01_odp')} is only reported to authorized individuals or roles.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; access control policy and procedures; procedures addressing sensor capability and data collection; personally identifiable information processing policy; system design documentation; system configuration settings and associated documentation; system architecture; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; system developer; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for the sensor capabilities
      TEST: Mechanisms restricting the reporting of sensor information to those authorized; sensor data collection and reporting capabilities for the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In situations where sensors are activated by authorized individuals, it is still possible that the data or information collected by the sensors will be sent to unauthorized entities.
  GUIDANCE
  tag nist: ['SC-42 (1)']
  tag control: 'SC-42 (1)'
  tag objective: 'SC-42(01)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_42_1: true
  tag odp: %w{sc_42_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-42(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
