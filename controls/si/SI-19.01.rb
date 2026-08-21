control 'SI-19(01)' do
  impact 0.5
  title "the dataset is de-identified upon collection by not collecting personally identifiable information."
  desc <<~DESC
    De-identify the dataset upon collection by not collecting personally identifiable information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the dataset is de-identified upon collection by not collecting personally identifiable information.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; de-identification procedures; procedures for minimizing the collection of personally identifiable information; system configuration; data collection mechanisms; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for de-identifying the dataset; organizational personnel with information security and privacy responsibilities
      TEST: Automated mechanisms preventing the collection of personally identifiable information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    If a data source contains personally identifiable information but the information will not be used, the dataset can be de-identified when it is created by not collecting the data elements that contain the personally identifiable information. For example, if an organization does not intend to use the social security number of an applicant, then application forms do not ask for a social security number.
  GUIDANCE
  tag nist: ['SI-19 (1)']
  tag control: 'SI-19 (1)'
  tag objective: 'SI-19(01)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_19_1: true

  describe 'NIST SP 800-53A Rev 5 objective SI-19(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
