control 'CM-11(02)' do
  impact 0.5
  title "user installation of software is allowed only with explicit privileged status."
  desc <<~DESC
    Allow user installation of software only with explicit privileged status.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      user installation of software is allowed only with explicit privileged status.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing user-installed software; configuration management plan; system security plan; system design documentation; system configuration settings and associated documentation; alerts/notifications of unauthorized software installations; system audit records; continuous monitoring strategy; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for governing user-installed software; organizational personnel operating, using, and/or maintaining the system; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes governing user-installed software on the system; mechanisms for prohibiting installation of software without privileged status (e.g., access controls)
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Privileged status can be obtained, for example, by serving in the role of system administrator.
  GUIDANCE
  tag nist: ['CM-11 (2)']
  tag control: 'CM-11 (2)'
  tag objective: 'CM-11(02)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_11_2: true

  describe 'NIST SP 800-53A Rev 5 objective CM-11(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
