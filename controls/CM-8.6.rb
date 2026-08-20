control 'CM-8 (6)' do
  impact 0.5
  title 'Assessed Configurations and Approved Deviations'
  desc <<~DESC
    Include assessed component configurations and any approved deviations to current deployed configurations in the system component inventory.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-08(06)[01] assessed component configurations are included in the system component inventory;
      CM-08(06)[02] any approved deviations to current deployed configurations are included in the system component inventory.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system component inventory; configuration management plan; system security plan; system design documentation; system component inventory; system configuration settings and associated documentation; change control records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with component inventory management responsibilities; organizational personnel with assessment responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing the system component inventory; mechanisms supporting and/or implementing system component inventory
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Assessed configurations and approved deviations focus on configuration settings established by organizations for system components, the specific components that have been assessed to determine compliance with the required configuration settings, and any approved deviations from established configuration settings.
  GUIDANCE
  tag nist: ['CM-8 (6)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control CM-8 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
