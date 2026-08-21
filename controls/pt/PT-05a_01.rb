control 'PT-05a.[01]' do
  impact 0.5
  title "a notice to individuals about the processing of personally identifiable information is provided such that the notice is available to individuals upon first interacting with an organization;"
  desc <<~DESC
    Provide notice to individuals about the processing of personally identifiable information that:
      a. Is available to individuals upon first interacting with an organization, and subsequently at #{input('pt_05_odp_01')};
      b. Is clear and easy-to-understand, expressing information about personally identifiable information processing in plain language;
      c. Identifies the authority that authorizes the processing of personally identifiable information;
      d. Identifies the purposes for which personally identifiable information is to be processed; and
      e. Includes #{input('pt_05_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a notice to individuals about the processing of personally identifiable information is provided such that the notice is available to individuals upon first interacting with an organization;

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; privacy notice; Privacy Act statements; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with user interface or user experience responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes and implementation support or mechanisms for providing notice to individuals regarding the processing of their personally identifiable information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Privacy notices help inform individuals about how their personally identifiable information is being processed by the system or organization. Organizations use privacy notices to inform individuals about how, under what authority, and for what purpose their personally identifiable information is processed, as well as other information such as choices individuals might have with respect to that processing and other parties with whom information is shared. Laws, executive orders, directives, regulations, or policies may require that privacy notices include specific elements or be provided in specific formats. Federal agency personnel consult with the senior agency official for privacy and legal counsel regarding when and where to provide privacy notices, as well as elements to include in privacy notices and required formats. In circumstances where laws or government-wide policies do not require privacy notices, organizational policies and determinations may require privacy notices and may serve as a source of the elements to include in privacy notices.

    Privacy risk assessments identify the privacy risks associated with the processing of personally identifiable information and may help organizations determine appropriate elements to include in a privacy notice to manage such risks. To help individuals understand how their information is being processed, organizations write materials in plain language and avoid technical jargon.
  GUIDANCE
  tag nist: ['PT-5']
  tag control: 'PT-5'
  tag objective: 'PT-05a.[01]'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pt_5: true
  tag odp: %w{pt_05_odp_01 pt_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PT-05a.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
