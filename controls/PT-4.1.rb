control 'PT-4 (1)' do
  impact 0.5
  title 'Tailored Consent'
  desc <<~DESC
    Provide #{input('pt_04_01_odp')} to allow individuals to tailor processing permissions to selected elements of personally identifiable information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PT-04(01) #{input('pt_04_01_odp')} are provided to allow individuals to tailor processing permissions to selected elements of personally identifiable information.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; consent policies and procedures; consent tools and mechanisms; consent presentation or display (user interface); privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with user interface or user experience responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for consenting to the processing of personally identifiable information; consent tools or mechanisms; mechanisms implementing consent
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    While some processing may be necessary for the basic functionality of the product or service, other processing may not. In these circumstances, organizations allow individuals to select how specific personally identifiable information elements may be processed. More tailored consent may help reduce privacy risk, increase individual satisfaction, and avoid adverse behaviors, such as abandonment of the product or service.
  GUIDANCE
  tag nist: ['PT-4 (1)']
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{}
  tag odp: %w{pt_04_01_odp}

  describe 'NIST SP 800-53 Rev 5 control PT-4 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
