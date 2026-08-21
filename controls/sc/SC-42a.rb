control 'SC-42a.' do
  impact 0.5
  title "#{input('sc_42_odp_01')} is/are prohibited;"
  desc <<~DESC
    a. Prohibit #{input('sc_42_odp_01')} ; and
    b. Provide an explicit indication of sensor use to #{input('sc_42_odp_05')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_42_odp_01')} is/are prohibited;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing sensor capabilities and data collection; access control policy and procedures; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; system developer; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for sensor capabilities
      TEST: Mechanisms implementing access controls for the remote activation of system sensor capabilities; mechanisms implementing the capability to indicate sensor use
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Sensor capability and data applies to types of systems or system components characterized as mobile devices, such as cellular telephones, smart phones, and tablets. Mobile devices often include sensors that can collect and record data regarding the environment where the system is in use. Sensors that are embedded within mobile devices include microphones, cameras, Global Positioning System (GPS) mechanisms, and accelerometers. While the sensors on mobiles devices provide an important function, if activated covertly, such devices can potentially provide a means for adversaries to learn valuable information about individuals and organizations. For example, remotely activating the GPS function on a mobile device could provide an adversary with the ability to track the movements of an individual. Organizations may prohibit individuals from bringing cellular telephones or digital cameras into certain designated facilities or controlled areas within facilities where classified information is stored or sensitive conversations are taking place.
  GUIDANCE
  tag nist: ['SC-42']
  tag control: 'SC-42'
  tag objective: 'SC-42a.'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_42: true
  tag odp: %w{sc_42_odp_01 sc_42_odp_05}

  describe 'NIST SP 800-53A Rev 5 objective SC-42a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
