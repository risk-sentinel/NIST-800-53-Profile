control 'PT-5 (2)' do
  impact 0.5
  title 'Privacy Act Statements'
  desc <<~DESC
    Include Privacy Act statements on forms that collect information that will be maintained in a Privacy Act system of records, or provide Privacy Act statements on separate forms that can be retained by individuals.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PT-05(02) Privacy Act statements are included on forms that collect information that will be maintained in a Privacy Act system of records, or Privacy Act statements are provided on separate forms that can be retained by individuals.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; privacy notice; Privacy Act system of records; forms that include Privacy Act statements; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for including Privacy Act statements on forms that collect information or on separate forms that can be retained by individuals
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    If a federal agency asks individuals to supply information that will become part of a system of records, the agency is required to provide a [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) statement on the form used to collect the information or on a separate form that can be retained by the individual. The agency provides a [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) statement in such circumstances regardless of whether the information will be collected on a paper or electronic form, on a website, on a mobile application, over the telephone, or through some other medium. This requirement ensures that the individual is provided with sufficient information about the request for information to make an informed decision on whether or not to respond.

    [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) statements provide formal notice to individuals of the authority that authorizes the solicitation of the information; whether providing the information is mandatory or voluntary; the principal purpose(s) for which the information is to be used; the published routine uses to which the information is subject; the effects on the individual, if any, of not providing all or any part of the information requested; and an appropriate citation and link to the relevant system of records notice. Federal agency personnel consult with the senior agency official for privacy and legal counsel regarding the notice provisions of the [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455).
  GUIDANCE
  tag nist: ['PT-5 (2)']
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true

  describe 'NIST SP 800-53 Rev 5 control PT-5 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
