control 'PT-05(01)' do
  impact 0.5
  title "a notice of personally identifiable information processing is presented to individuals at a time and location where the individual provides personally identifiable information, in conjunction with a data action, or #{input('pt_05_01_odp')}."
  desc <<~DESC
    Present notice of personally identifiable information processing to individuals at a time and location where the individual provides personally identifiable information or in conjunction with a data action, or #{input('pt_05_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a notice of personally identifiable information processing is presented to individuals at a time and location where the individual provides personally identifiable information, in conjunction with a data action, or #{input('pt_05_01_odp')}.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; privacy notice; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with user interface or user experience responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes and implementation support or mechanisms for providing notice to individuals regarding the processing of their personally identifiable information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Just-in-time notices inform individuals of how organizations process their personally identifiable information at a time when such notices may be most useful to the individuals. Individual assumptions about how personally identifiable information will be processed might not be accurate or reliable if time has passed since the organization last presented notice or the circumstances under which the individual was last provided notice have changed. A just-in-time notice can explain data actions that organizations have identified as potentially giving rise to greater privacy risk for individuals. Organizations can use a just-in-time notice to update or remind individuals about specific data actions as they occur or highlight specific changes that occurred since last presenting notice. A just-in-time notice can be used in conjunction with just-in-time consent to explain what will occur if consent is declined. Organizations use discretion to determine when to use a just-in-time notice and may use supporting information on user demographics, focus groups, or surveys to learn about users’ privacy interests and concerns.
  GUIDANCE
  tag nist: ['PT-5 (1)']
  tag control: 'PT-5 (1)'
  tag objective: 'PT-05(01)'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{}
  tag control_pt_5_1: true
  tag odp: %w{pt_05_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective PT-05(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
