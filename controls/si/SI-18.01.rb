control 'SI-18(01)' do
  impact 0.5
  title "#{input('si_18_01_odp')} are used to correct or delete personally identifiable information that is inaccurate, outdated, incorrectly determined regarding impact, or incorrectly de-identified."
  desc <<~DESC
    Correct or delete personally identifiable information that is inaccurate or outdated, incorrectly determined regarding impact, or incorrectly de-identified using #{input('si_18_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_18_01_odp')} are used to correct or delete personally identifiable information that is inaccurate, outdated, incorrectly determined regarding impact, or incorrectly de-identified.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; documentation addressing personally identifiable information quality operations; quality reports; maintenance logs; system audit records; audit findings; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for performing personally identifiable information quality inspections; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for personally identifiable information quality inspection; automated mechanisms supporting and/or implementing personally identifiable information quality operations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The use of automated mechanisms to improve data quality may inadvertently create privacy risks. Automated tools may connect to external or otherwise unrelated systems, and the matching of records between these systems may create linkages with unintended consequences. Organizations assess and document these risks in their privacy impact assessments and make determinations that are in alignment with their privacy program plans.

    As data is obtained and used across the information life cycle, it is important to confirm the accuracy and relevance of personally identifiable information. Automated mechanisms can augment existing data quality processes and procedures and enable an organization to better identify and manage personally identifiable information in large-scale systems. For example, automated tools can greatly improve efforts to consistently normalize data or identify malformed data. Automated tools can also be used to improve the auditing of data and detect errors that may incorrectly alter personally identifiable information or incorrectly associate such information with the wrong individual. Automated capabilities backstop processes and procedures at-scale and enable more fine-grained detection and correction of data quality errors.
  GUIDANCE
  tag nist: ['SI-18 (1)']
  tag control: 'SI-18 (1)'
  tag objective: 'SI-18(01)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_18_1: true
  tag odp: %w{si_18_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-18(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
