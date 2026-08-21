control 'SC-42(04)' do
  impact 0.5
  title "#{input('sc_42_04_odp_01')} are employed to facilitate an individual’s awareness that personally identifiable information is being collected by #{input('sc_42_04_odp_02')}"
  desc <<~DESC
    Employ the following measures to facilitate an individual’s awareness that personally identifiable information is being collected by #{input('sc_42_04_odp_02')}: #{input('sc_42_04_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_42_04_odp_01')} are employed to facilitate an individual’s awareness that personally identifiable information is being collected by #{input('sc_42_04_odp_02')}

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; access control policy and procedures; personally identifiable information processing policy; sensor capability and data collection policy and procedures; system design documentation; system configuration settings and associated documentation; privacy risk assessment documentation; privacy impact assessments; system architecture; list of measures to be employed to ensure that individuals are aware that personally identifiable information is being collected by sensors; examples of notifications provided to individuals that personally identifiable information is being collected by sensors; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for sensor capabilities
      TEST: Mechanisms supporting and/or implementing measures to facilitate an individual’s awareness that personally identifiable information is being collected by sensors; sensor information collection capabilities for the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Awareness that organizational sensors are collecting data enables individuals to more effectively engage in managing their privacy. Measures can include conventional written notices and sensor configurations that make individuals directly or indirectly aware through other devices that the sensor is collecting information. The usability and efficacy of the notice are important considerations.
  GUIDANCE
  tag nist: ['SC-42 (4)']
  tag control: 'SC-42 (4)'
  tag objective: 'SC-42(04)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_42_4: true
  tag odp: %w{sc_42_04_odp_01 sc_42_04_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SC-42(04)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
