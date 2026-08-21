control 'SI-19(02)' do
  impact 0.5
  title "the archiving of personally identifiable information elements is prohibited if those elements in a dataset will not be needed after the dataset is archived."
  desc <<~DESC
    Prohibit archiving of personally identifiable information elements if those elements in a dataset will not be needed after the dataset is archived.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the archiving of personally identifiable information elements is prohibited if those elements in a dataset will not be needed after the dataset is archived.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; de-identification procedures; system configuration documentation; data archiving mechanisms; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for de-identifying the dataset; organizational personnel with dataset archival responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Automated mechanisms prohibiting the archival of personally identifiable information elements
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Datasets can be archived for many reasons. The envisioned purposes for the archived dataset are specified, and if personally identifiable information elements are not required, the elements are not archived. For example, social security numbers may have been collected for record linkage, but the archived dataset may include the required elements from the linked records. In this case, it is not necessary to archive the social security numbers.
  GUIDANCE
  tag nist: ['SI-19 (2)']
  tag control: 'SI-19 (2)'
  tag objective: 'SI-19(02)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_19_2: true

  describe 'NIST SP 800-53A Rev 5 objective SI-19(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
