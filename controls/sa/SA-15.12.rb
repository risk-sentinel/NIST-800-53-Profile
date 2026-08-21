control 'SA-15(12)' do
  impact 0.5
  title "the developer of the system or system component is required to minimize the use of personally identifiable information in development and test environments."
  desc <<~DESC
    Require the developer of the system or system component to minimize the use of personally identifiable information in development and test environments.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system or system component is required to minimize the use of personally identifiable information in development and test environments.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing the development process; procedures addressing the minimization of personally identifiable information in testing, training, and research; personally identifiable information processing policy; procedures addressing the authority to test with personally identifiable information; standards and tools; solicitation documentation; service level agreements; acquisition contracts for the system or services; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities; system developer
      TEST: Organizational processes for the minimization of personally identifiable information in development and test environments; mechanisms to facilitate the minimization of personally identifiable information in development and test environments
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations can minimize the risk to an individual’s privacy by using techniques such as de-identification or synthetic data. Limiting the use of personally identifiable information in development and test environments helps reduce the level of privacy risk created by a system.
  GUIDANCE
  tag nist: ['SA-15 (12)']
  tag control: 'SA-15 (12)'
  tag objective: 'SA-15(12)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_15_12: true

  describe 'NIST SP 800-53A Rev 5 objective SA-15(12)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
