control 'AT-2 (6)' do
  impact 0.5
  title 'Cyber Threat Environment'
  desc <<~DESC
    (a) Provide literacy training on the cyber threat environment; and
    (b) Reflect current cyber threat information in system operations.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AT-02(06)(a) literacy training on the cyber threat environment is provided;
      AT-02(06)(b) system operations reflects current cyber threat information.

    Assessment methods and objects:
      EXAMINE: System security plan; privacy plan; literacy training and awareness policy; procedures addressing literacy training and awareness training implementation; literacy training and awareness curriculum; literacy training and awareness materials; other relevant documents or records
      INTERVIEW: Organizational personnel who receive literacy training and awareness; organizational personnel with responsibilities for basic literacy training and awareness; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Since threats continue to change over time, threat literacy training by the organization is dynamic. Moreover, threat literacy training is not performed in isolation from the system operations that support organizational mission and business functions.
  GUIDANCE
  tag nist: ['AT-2 (6)']
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AT-2 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
