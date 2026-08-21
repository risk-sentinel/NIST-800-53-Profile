control 'SI-18b.' do
  impact 0.5
  title "inaccurate or outdated personally identifiable information is corrected or deleted."
  desc <<~DESC
    a. Check the accuracy, relevance, timeliness, and completeness of personally identifiable information across the information life cycle #{input('si_18_prm_1')} ; and
    b. Correct or delete inaccurate or outdated personally identifiable information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      inaccurate or outdated personally identifiable information is corrected or deleted.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; documentation addressing personally identifiable information quality operations; quality reports; maintenance logs; system audit records; audit findings; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for performing personally identifiable information quality inspections; organizational personnel with information security responsibilities; organizational personnel with privacy responsibilities
      TEST: Organizational processes for personally identifiable information quality inspection; automated mechanisms supporting and/or implementing personally identifiable information quality operations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Personally identifiable information quality operations include the steps that organizations take to confirm the accuracy and relevance of personally identifiable information throughout the information life cycle. The information life cycle includes the creation, collection, use, processing, storage, maintenance, dissemination, disclosure, and disposal of personally identifiable information. Personally identifiable information quality operations include editing and validating addresses as they are collected or entered into systems using automated address verification look-up application programming interfaces. Checking personally identifiable information quality includes the tracking of updates or changes to data over time, which enables organizations to know how and what personally identifiable information was changed should erroneous information be identified. The measures taken to protect personally identifiable information quality are based on the nature and context of the personally identifiable information, how it is to be used, how it was obtained, and the potential de-identification methods employed. The measures taken to validate the accuracy of personally identifiable information used to make determinations about the rights, benefits, or privileges of individuals covered under federal programs may be more comprehensive than the measures used to validate personally identifiable information used for less sensitive purposes.
  GUIDANCE
  tag nist: ['SI-18']
  tag control: 'SI-18'
  tag objective: 'SI-18b.'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_si_18: true
  tag odp: %w{si_18_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective SI-18b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
