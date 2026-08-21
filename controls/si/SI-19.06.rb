control 'SI-19(06)' do
  impact 0.5
  title "the disclosure of personally identifiable information is prevented by adding non-deterministic noise to the results of mathematical operations before the results are reported."
  desc <<~DESC
    Prevent disclosure of personally identifiable information by adding non-deterministic noise to the results of mathematical operations before the results are reported.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the disclosure of personally identifiable information is prevented by adding non-deterministic noise to the results of mathematical operations before the results are reported.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; de-identification procedures; system configuration; de-identified datasets; differential privacy tools; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for de-identifying the dataset; organizational personnel with information security and privacy responsibilities
      TEST: Online query systems; automated mechanisms supporting and/or implementing differential privacy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The mathematical definition for differential privacy holds that the result of a dataset analysis should be approximately the same before and after the addition or removal of a single data record (which is assumed to be the data from a single individual). In its most basic form, differential privacy applies only to online query systems. However, it can also be used to produce machine-learning statistical classifiers and synthetic data. Differential privacy comes at the cost of decreased accuracy of results, forcing organizations to quantify the trade-off between privacy protection and the overall accuracy, usefulness, and utility of the de-identified dataset. Non-deterministic noise can include adding small, random values to the results of mathematical operations in dataset analysis.
  GUIDANCE
  tag nist: ['SI-19 (6)']
  tag control: 'SI-19 (6)'
  tag objective: 'SI-19(06)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_19_6: true

  describe 'NIST SP 800-53A Rev 5 objective SI-19(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
