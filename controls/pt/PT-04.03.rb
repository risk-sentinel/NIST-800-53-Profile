control 'PT-04(03)' do
  impact 0.5
  title "the #{input('pt_04_03_odp')} are implemented for individuals to revoke consent to the processing of their personally identifiable information."
  desc <<~DESC
    Implement #{input('pt_04_03_odp')} for individuals to revoke consent to the processing of their personally identifiable information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the #{input('pt_04_03_odp')} are implemented for individuals to revoke consent to the processing of their personally identifiable information.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; consent revocation policies and procedures; consent revocation user interface or user experience; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with user interface or user experience responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for consenting to the processing of personally identifiable information; tools or mechanisms for implementing consent revocation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Revocation of consent enables individuals to exercise control over their initial consent decision when circumstances change. Organizations consider usability factors in enabling easy-to-use revocation capabilities.
  GUIDANCE
  tag nist: ['PT-4 (3)']
  tag control: 'PT-4 (3)'
  tag objective: 'PT-04(03)'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{}
  tag control_pt_4_3: true
  tag odp: %w{pt_04_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective PT-04(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
