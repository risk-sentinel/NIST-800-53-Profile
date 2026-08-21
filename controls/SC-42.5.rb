control 'SC-42 (5)' do
  impact 0.5
  title 'Collection Minimization'
  desc <<~DESC
    Employ #{input('sc_42_05_odp')} that are configured to minimize the collection of information about individuals that is not needed.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-42(05) the #{input('sc_42_05_odp')} configured to minimize the collection of information about individuals that is not needed are employed.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; access control policy and procedures; personally identifiable information processing policy; sensor capability and data collection policy and procedures; system design documentation; system configuration settings and associated documentation; privacy risk assessment documentation; privacy impact assessments; system architecture; list of information being collected by sensors; list of sensor configurations that minimize the collection of personally identifiable information (e.g., obscure human features); system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for sensor capabilities
      TEST: Mechanisms supporting and/or implementing measures to facilitate the review of information that is being collected by sensors; sensor information collection capabilities for the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Although policies to control for authorized use can be applied to information once it is collected, minimizing the collection of information that is not needed mitigates privacy risk at the system entry point and mitigates the risk of policy control failures. Sensor configurations include the obscuring of human features, such as blurring or pixelating flesh tones.
  GUIDANCE
  tag nist: ['SC-42 (5)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_42_05_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-42 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
