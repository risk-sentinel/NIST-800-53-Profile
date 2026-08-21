control 'SI-19(03)' do
  impact 0.5
  title "personally identifiable information elements are removed from a dataset prior to its release if those elements in the dataset do not need to be part of the data release."
  desc <<~DESC
    Remove personally identifiable information elements from a dataset prior to its release if those elements in the dataset do not need to be part of the data release.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      personally identifiable information elements are removed from a dataset prior to its release if those elements in the dataset do not need to be part of the data release.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; de-identification procedures; procedures for minimizing the release of personally identifiable information; system configuration; data release mechanisms; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for de-identifying the dataset; organizational personnel with information security and privacy responsibilities
      TEST: Automated mechanisms supporting and/or implementing the removal of personally identifiable information elements from a dataset
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Prior to releasing a dataset, a data custodian considers the intended uses of the dataset and determines if it is necessary to release personally identifiable information. If the personally identifiable information is not necessary, the information can be removed using de-identification techniques.
  GUIDANCE
  tag nist: ['SI-19 (3)']
  tag control: 'SI-19 (3)'
  tag objective: 'SI-19(03)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_19_3: true

  describe 'NIST SP 800-53A Rev 5 objective SI-19(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
