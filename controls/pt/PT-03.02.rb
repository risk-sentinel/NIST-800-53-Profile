control 'PT-03(02)' do
  impact 0.5
  title "the processing purposes of personally identifiable information are tracked using #{input('pt_03_02_odp')}."
  desc <<~DESC
    Track processing purposes of personally identifiable information using #{input('pt_03_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the processing purposes of personally identifiable information are tracked using #{input('pt_03_02_odp')}.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; data extracts with corresponding data tags; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for managing the enforcement of authorized processing of personally identifiable information; automated tracking mechanisms
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms augment tracking of the processing purposes.
  GUIDANCE
  tag nist: ['PT-3 (2)']
  tag control: 'PT-3 (2)'
  tag objective: 'PT-03(02)'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{}
  tag control_pt_3_2: true
  tag odp: %w{pt_03_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective PT-03(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
