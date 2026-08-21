control 'PM-03b.[02]' do
  impact 0.5
  title "the documentation required for addressing the privacy program in capital planning and investment requests is prepared in accordance with applicable laws, executive orders, directives, policies, regulations, standards;"
  desc <<~DESC
    a. Include the resources needed to implement the information security and privacy programs in capital planning and investment requests and document all exceptions to this requirement;
    b. Prepare documentation required for addressing information security and privacy programs in capital planning and investment requests in accordance with applicable laws, executive orders, directives, policies, regulations, standards; and
    c. Make available for expenditure, the planned information security and privacy resources.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the documentation required for addressing the privacy program in capital planning and investment requests is prepared in accordance with applicable laws, executive orders, directives, policies, regulations, standards;

    Assessment methods and objects:
      EXAMINE: Information security program plan; Exhibit 300; Exhibit 53; business cases for capital planning and investment; procedures for capital planning and investment; documentation of exceptions to capital planning requirements; other relevant documents or records
      INTERVIEW: Organizational personnel with information security program planning responsibilities; organizational personnel with privacy program planning responsibilities; organizational personnel responsible for capital planning and investment; organizational personnel with information security responsibilities; organizational personnel with privacy responsibilities
      TEST: Organizational processes for capital planning and investment; organizational processes for business case, Exhibit 300, and Exhibit 53 development; mechanisms supporting the capital planning and investment process
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations consider establishing champions for information security and privacy and, as part of including the necessary resources, assign specialized expertise and resources as needed. Organizations may designate and empower an Investment Review Board or similar group to manage and provide oversight for the information security and privacy aspects of the capital planning and investment control process.
  GUIDANCE
  tag nist: ['PM-3']
  tag control: 'PM-3'
  tag objective: 'PM-03b.[02]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_3: true

  describe 'NIST SP 800-53A Rev 5 objective PM-03b.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
