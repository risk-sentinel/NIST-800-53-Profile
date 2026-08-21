control 'AT-03(05)' do
  impact 0.5
  title "#{input('at_03_05_odp_01')} are provided with initial and refresher training #{input('at_03_05_odp_02')} in the employment and operation of personally identifiable information processing and transparency controls."
  desc <<~DESC
    Provide #{input('at_03_05_odp_01')} with initial and #{input('at_03_05_odp_02')} training in the employment and operation of personally identifiable information processing and transparency controls.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('at_03_05_odp_01')} are provided with initial and refresher training #{input('at_03_05_odp_02')} in the employment and operation of personally identifiable information processing and transparency controls.

    Assessment methods and objects:
      EXAMINE: Security and privacy awareness and training policy; procedures addressing security and privacy awareness training implementation; security and privacy awareness training curriculum; security and privacy awareness training materials; system security plan; privacy plan; organizational privacy notices; organizational policies; system of records notices; Privacy Act statements; computer matching agreements and notices; privacy impact assessments; information sharing agreements; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for role-based security and privacy training; organizational personnel who participate in security and privacy awareness training
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Personally identifiable information processing and transparency controls include the organization’s authority to process personally identifiable information and personally identifiable information processing purposes. Role-based training for federal agencies addresses the types of information that may constitute personally identifiable information and the risks, considerations, and obligations associated with its processing. Such training also considers the authority to process personally identifiable information documented in privacy policies and notices, system of records notices, computer matching agreements and notices, privacy impact assessments, [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) statements, contracts, information sharing agreements, memoranda of understanding, and/or other documentation.
  GUIDANCE
  tag nist: ['AT-3 (5)']
  tag control: 'AT-3 (5)'
  tag objective: 'AT-03(05)'
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_at_3_5: true
  tag odp: %w{at_03_05_odp_01 at_03_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AT-03(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
