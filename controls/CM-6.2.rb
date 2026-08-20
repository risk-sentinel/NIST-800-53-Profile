control 'CM-6 (2)' do
  impact 0.5
  title 'Respond to Unauthorized Changes'
  desc <<~DESC
    Take the following actions in response to unauthorized changes to #{input('cm_06_02_odp_02')}: #{input('cm_06_02_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-06(02) #{input('cm_06_02_odp_01')} are taken in response to unauthorized changes to #{input('cm_06_02_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System security plan; privacy plan; configuration management policy; procedures addressing configuration settings for the system; configuration management plan; system design documentation; system configuration settings and associated documentation; alerts/notifications of unauthorized changes to system configuration settings; system component inventory; documented responses to unauthorized changes to system configuration settings; change control records; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with security configuration management responsibilities; organizational personnel with security and privacy responsibilities; system/network administrators
      TEST: Organizational process for responding to unauthorized changes to system configuration settings; mechanisms supporting and/or implementing actions in response to unauthorized changes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Responses to unauthorized changes to configuration settings include alerting designated organizational personnel, restoring established configuration settings, or—in extreme cases—halting affected system processing.
  GUIDANCE
  tag nist: ['CM-6 (2)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{cm_06_02_odp_01 cm_06_02_odp_02}

  describe 'NIST SP 800-53 Rev 5 control CM-6 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
