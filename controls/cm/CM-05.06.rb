control 'CM-05(06)' do
  impact 0.5
  title "privileges to change software resident within software libraries are limited."
  desc <<~DESC
    Limit privileges to change software resident within software libraries.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      privileges to change software resident within software libraries are limited.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing access restrictions for changes to the system; configuration management plan; system design documentation; system architecture and configuration documentation; system configuration settings and associated documentation; system component inventory; change control records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing access restrictions to change; mechanisms supporting and/or implementing access restrictions for change
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Software libraries include privileged programs.
  GUIDANCE
  tag nist: ['CM-5 (6)']
  tag control: 'CM-5 (6)'
  tag objective: 'CM-05(06)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_5_6: true

  describe 'NIST SP 800-53A Rev 5 objective CM-05(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
