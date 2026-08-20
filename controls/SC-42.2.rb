control 'SC-42 (2)' do
  impact 0.5
  title 'Authorized Use'
  desc <<~DESC
    Employ the following measures so that data or information collected by #{input('sc_42_01_odp')} is only used for authorized purposes: #{input('sc_42_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-42(02) #{input('sc_42_02_odp')} are employed so that data or information collected by #{input('sc_42_01_odp')} is only used for authorized purposes.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; access control policy and procedures; personally identifiable information processing policy; sensor capability and data collection; system design documentation; system configuration settings and associated documentation; system architecture; list of measures to be employed to that the ensure data or information collected by sensors is only used for authorized purposes; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for sensor capabilities
      TEST: Mechanisms supporting and/or implementing measures to ensure that sensor information is only used for authorized purposes; sensor information collection capability for the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information collected by sensors for a specific authorized purpose could be misused for some unauthorized purpose. For example, GPS sensors that are used to support traffic navigation could be misused to track the movements of individuals. Measures to mitigate such activities include additional training to help ensure that authorized individuals do not abuse their authority and, in the case where sensor data is maintained by external parties, contractual restrictions on the use of such data.
  GUIDANCE
  tag nist: ['SC-42 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_42_01_odp sc_42_02_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-42 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
