control 'PT-03(01)' do
  impact 0.5
  title "data tags containing #{input('pt_03_01_odp_01')} are attached to #{input('pt_03_01_odp_02')}."
  desc <<~DESC
    Attach data tags containing the following purposes to #{input('pt_03_01_odp_02')}: #{input('pt_03_01_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      data tags containing #{input('pt_03_01_odp_01')} are attached to #{input('pt_03_01_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; documented description of how data tags are used to identify personally identifiable information data elements and their authorized uses; data tag schema; data extracts with corresponding data tags; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with data tagging responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for authorizing the processing of personally identifiable information; mechanisms supporting and/or implementing data tagging
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Data tags support the tracking of processing purposes by conveying the purposes along with the relevant elements of personally identifiable information throughout the system. By conveying the processing purposes in a data tag along with the personally identifiable information as the information transits a system, a system owner or operator can identify whether a change in processing would be compatible with the identified and documented purposes. Data tags may also support the use of automated tools.
  GUIDANCE
  tag nist: ['PT-3 (1)']
  tag control: 'PT-3 (1)'
  tag objective: 'PT-03(01)'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{}
  tag control_pt_3_1: true
  tag odp: %w{pt_03_01_odp_01 pt_03_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PT-03(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
