control 'SI-19a.' do
  impact 0.5
  title "#{input('si_19_odp_01')} are removed from datasets;"
  desc <<~DESC
    a. Remove the following elements of personally identifiable information from datasets: #{input('si_19_odp_01')} ; and
    b. Evaluate #{input('si_19_odp_02')} for effectiveness of de-identification.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_19_odp_01')} are removed from datasets;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; de-identification procedures; system configuration; datasets with personally identifiable information removed; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for identifying unnecessary identifiers; organizational personnel responsible for removing personally identifiable information from datasets; organizational personnel with information security and privacy responsibilities
      TEST: Automated mechanisms supporting and/or implementing the removal of personally identifiable information elements
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    De-identification is the general term for the process of removing the association between a set of identifying data and the data subject. Many datasets contain information about individuals that can be used to distinguish or trace an individual’s identity, such as name, social security number, date and place of birth, mother’s maiden name, or biometric records. Datasets may also contain other information that is linked or linkable to an individual, such as medical, educational, financial, and employment information. Personally identifiable information is removed from datasets by trained individuals when such information is not (or no longer) necessary to satisfy the requirements envisioned for the data. For example, if the dataset is only used to produce aggregate statistics, the identifiers that are not needed for producing those statistics are removed. Removing identifiers improves privacy protection since information that is removed cannot be inadvertently disclosed or improperly used. Organizations may be subject to specific de-identification definitions or methods under applicable laws, regulations, or policies. Re-identification is a residual risk with de-identified data. Re-identification attacks can vary, including combining new datasets or other improvements in data analytics. Maintaining awareness of potential attacks and evaluating for the effectiveness of the de-identification over time support the management of this residual risk.
  GUIDANCE
  tag nist: ['SI-19']
  tag control: 'SI-19'
  tag objective: 'SI-19a.'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_si_19: true
  tag odp: %w{si_19_odp_01 si_19_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SI-19a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
