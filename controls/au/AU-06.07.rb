control 'AU-06(07)' do
  impact 0.5
  title "the permitted actions for each #{input('au_06_07_odp')} associated with the review, analysis, and reporting of audit record information are specified."
  desc <<~DESC
    Specify the permitted actions for each #{input('au_06_07_odp')} associated with the review, analysis, and reporting of audit record information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the permitted actions for each #{input('au_06_07_odp')} associated with the review, analysis, and reporting of audit record information are specified.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing process, role and/or user permitted actions from audit review, analysis, and reporting; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with audit review, analysis, and reporting responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms supporting permitted actions for the review, analysis, and reporting of audit information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations specify permitted actions for system processes, roles, and users associated with the review, analysis, and reporting of audit records through system account management activities. Specifying permitted actions on audit record information is a way to enforce the principle of least privilege. Permitted actions are enforced by the system and include read, write, execute, append, and delete.
  GUIDANCE
  tag nist: ['AU-6 (7)']
  tag control: 'AU-6 (7)'
  tag objective: 'AU-06(07)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_6_7: true
  tag odp: %w{au_06_07_odp}

  describe 'NIST SP 800-53A Rev 5 objective AU-06(07)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
