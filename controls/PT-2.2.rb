control 'PT-2 (2)' do
  impact 0.5
  title 'Automation'
  desc <<~DESC
    Manage enforcement of the authorized processing of personally identifiable information using #{input('pt_02_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PT-02(02) enforcement of the authorized processing of personally identifiable information is managed using #{input('pt_02_02_odp')}.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for authorizing the processing of personally identifiable information; automated mechanisms supporting and/or implementing the management of authorized personally identifiable information processing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms augment verification that only authorized processing is occurring.
  GUIDANCE
  tag nist: ['PT-2 (2)']
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{}
  tag odp: %w{pt_02_02_odp}

  describe 'NIST SP 800-53 Rev 5 control PT-2 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
