control 'CM-3 (5)' do
  impact 0.5
  title 'Automated Security Response'
  desc <<~DESC
    Implement the following security responses automatically if baseline configurations are changed in an unauthorized manner: #{input('cm_03_05_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-03(05) #{input('cm_03_05_odp')} are automatically implemented if baseline configurations are changed in an unauthorized manner.

    Assessment methods and objects:
      EXAMINE: System security plan; configuration management policy; procedures addressing system configuration change control; configuration management plan; system design documentation; system architecture and configuration documentation; system configuration settings and associated documentation; alerts/notifications of unauthorized baseline configuration changes; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration change control responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; members of change control board or similar
      TEST: Organizational processes for configuration change control; automated mechanisms implementing security responses to unauthorized changes to the baseline configurations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated security responses include halting selected system functions, halting system processing, and issuing alerts or notifications to organizational personnel when there is an unauthorized modification of a configuration item.
  GUIDANCE
  tag nist: ['CM-3 (5)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag odp: %w{cm_03_05_odp}

  describe 'NIST SP 800-53 Rev 5 control CM-3 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
