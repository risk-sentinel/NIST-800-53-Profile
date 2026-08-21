control 'CM-07(06)' do
  impact 0.5
  title "#{input('cm_07_06_odp')} is required to be executed in a confined physical or virtual machine environment with limited privileges."
  desc <<~DESC
    Require that the following user-installed software execute in a confined physical or virtual machine environment with limited privileges: #{input('cm_07_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('cm_07_06_odp')} is required to be executed in a confined physical or virtual machine environment with limited privileges.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing least functionality in the system; configuration management plan; system design documentation; system configuration settings and associated documentation; list or record of software required to execute in a confined environment; system component inventory; common secure configuration checklists; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for identifying and/or managing user-installed software and associated privileges; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational process for identifying user-installed software required to execute in a confined environment; mechanisms supporting and/or implementing the confinement of user-installed software to physical or virtual machine environments; mechanisms supporting and/or implementing privilege limitations on user-installed software
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations identify software that may be of concern regarding its origin or potential for containing malicious code. For this type of software, user installations occur in confined environments of operation to limit or contain damage from malicious code that may be executed.
  GUIDANCE
  tag nist: ['CM-7 (6)']
  tag control: 'CM-7 (6)'
  tag objective: 'CM-07(06)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_7_6: true
  tag odp: %w{cm_07_06_odp}

  describe 'NIST SP 800-53A Rev 5 objective CM-07(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
