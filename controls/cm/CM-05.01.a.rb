control 'CM-05(01)(a)' do
  impact 0.5
  title "access restrictions for change are enforced using #{input('cm_05_01_odp')};"
  desc <<~DESC
    (a) Enforce access restrictions using #{input('cm_05_01_odp')} ; and
    (b) Automatically generate audit records of the enforcement actions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      access restrictions for change are enforced using #{input('cm_05_01_odp')};

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing access restrictions for changes to the system; system design documentation; system architecture and configuration documentation; system configuration settings and associated documentation; change control records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with logical access control responsibilities; organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing access restrictions to change; automated mechanisms implementing the enforcement of access restrictions for changes to the system; automated mechanisms supporting auditing of enforcement actions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations log system accesses associated with applying configuration changes to ensure that configuration change control is implemented and to support after-the-fact actions should organizations discover any unauthorized changes.
  GUIDANCE
  tag nist: ['CM-5 (1)']
  tag control: 'CM-5 (1)'
  tag objective: 'CM-05(01)(a)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_cm_5_1: true
  tag odp: %w{cm_05_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective CM-05(01)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
