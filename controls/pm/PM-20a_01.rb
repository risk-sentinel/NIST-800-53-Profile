control 'PM-20a.[01]' do
  impact 0.5
  title "the webpage ensures that the public has access to information about organizational privacy activities;"
  desc <<~DESC
    Maintain a central resource webpage on the organization’s principal public website that serves as a central source of information about the organization’s privacy program and that:
      a. Ensures that the public has access to information about organizational privacy activities and can communicate with its senior agency official for privacy;
      b. Ensures that organizational privacy practices and reports are publicly available; and
      c. Employs publicly facing email addresses and/or phone lines to enable the public to provide feedback and/or direct questions to privacy offices regarding privacy practices.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the webpage ensures that the public has access to information about organizational privacy activities;

    Assessment methods and objects:
      EXAMINE: Public website; publicly posted privacy program documents, including policies, procedures, plans, and reports; position description of the senior agency official for privacy; public privacy notices, including Federal Register notices; privacy impact assessments; privacy risk assessments; Privacy Act statements and system of records notices; computer matching agreements and notices; other relevant documents or records
      INTERVIEW: Organizational personnel with privacy program information dissemination responsibilities; organizational personnel with privacy responsibilities
      TEST: Location, access, availability, and functionality of privacy resource webpage
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    For federal agencies, the webpage is located at www.[agency].gov/privacy. Federal agencies include public privacy impact assessments, system of records notices, computer matching notices and agreements, [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) exemption and implementation rules, privacy reports, privacy policies, instructions for individuals making an access or amendment request, email addresses for questions/complaints, blogs, and periodic publications.
  GUIDANCE
  tag nist: ['PM-20']
  tag control: 'PM-20'
  tag objective: 'PM-20a.[01]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_20: true

  describe 'NIST SP 800-53A Rev 5 objective PM-20a.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
