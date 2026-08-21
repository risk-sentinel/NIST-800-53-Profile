control 'CM-3 (8)' do
  impact 0.5
  title 'Prevent or Restrict Configuration Changes'
  desc <<~DESC
    Prevent or restrict changes to the configuration of the system under the following circumstances: #{input('cm_03_08_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-03(08) changes to the configuration of the system are prevented or restricted under #{input('cm_03_08_odp')}.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system configuration change control; configuration management plan; change control records; system architecture and configuration documentation; system configuration settings and associated documentation; system component inventory; system audit records; system security plan; other relevant documents or records
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System configuration changes can adversely affect critical system security and privacy functionality. Change restrictions can be enforced through automated mechanisms.
  GUIDANCE
  tag nist: ['CM-3 (8)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag odp: %w{cm_03_08_odp}

  describe 'NIST SP 800-53 Rev 5 control CM-3 (8)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
