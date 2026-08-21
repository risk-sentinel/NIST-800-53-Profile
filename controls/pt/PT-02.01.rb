control 'PT-02(01)' do
  impact 0.5
  title "data tags containing #{input('pt_02_01_odp_01')} are attached to #{input('pt_02_01_odp_02')}."
  desc <<~DESC
    Attach data tags containing #{input('pt_02_01_odp_01')} to #{input('pt_02_01_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      data tags containing #{input('pt_02_01_odp_01')} are attached to #{input('pt_02_01_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures including procedures addressing data tagging; data tag definitions; documented requirements for use and monitoring of data tagging; data extracts with corresponding data tags; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for authorizing the processing of personally identifiable information; organizational processes for data tagging; mechanisms for applying and monitoring data tagging; mechanisms supporting and/or implementing the restriction of personally identifiable information processing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Data tags support the tracking and enforcement of authorized processing by conveying the types of processing that are authorized along with the relevant elements of personally identifiable information throughout the system. Data tags may also support the use of automated tools.
  GUIDANCE
  tag nist: ['PT-2 (1)']
  tag control: 'PT-2 (1)'
  tag objective: 'PT-02(01)'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{}
  tag control_pt_2_1: true
  tag odp: %w{pt_02_01_odp_01 pt_02_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PT-02(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
