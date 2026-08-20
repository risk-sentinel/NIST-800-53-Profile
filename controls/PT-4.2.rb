control 'PT-4 (2)' do
  impact 0.5
  title 'Just-in-time Consent'
  desc <<~DESC
    Present #{input('pt_04_02_odp_01')} to individuals at #{input('pt_04_02_odp_02')} and in conjunction with #{input('pt_04_02_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PT-04(02) #{input('pt_04_02_odp_01')} are presented to individuals #{input('pt_04_02_odp_02')} and in conjunction with #{input('pt_04_02_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; consent policies and procedures; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with user interface or user experience responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for the collection of personally identifiable information; mechanisms for obtaining just-in-time consent from users for the processing of their personally identifiable information; mechanisms implementing just-in-time consent
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Just-in-time consent enables individuals to participate in how their personally identifiable information is being processed at the time or in conjunction with specific types of data processing when such participation may be most useful to the individual. Individual assumptions about how personally identifiable information is being processed might not be accurate or reliable if time has passed since the individual last gave consent or the type of processing creates significant privacy risk. Organizations use discretion to determine when to use just-in-time consent and may use supporting information on demographics, focus groups, or surveys to learn more about individuals’ privacy interests and concerns.
  GUIDANCE
  tag nist: ['PT-4 (2)']
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{}
  tag odp: %w{pt_04_02_odp_01 pt_04_02_odp_02 pt_04_02_odp_03}

  describe 'NIST SP 800-53 Rev 5 control PT-4 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
