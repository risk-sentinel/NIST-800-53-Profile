control 'CM-3 (3)' do
  impact 0.5
  title 'Automated Change Implementation'
  desc <<~DESC
    Implement changes to the current system baseline and deploy the updated baseline across the installed base using #{input('cm_03_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-03(03)[01] changes to the current system baseline are implemented using #{input('cm_03_03_odp')};
      CM-03(03)[02] the updated baseline is deployed across the installed base using #{input('cm_03_03_odp')}.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; configuration management plan; procedures addressing system configuration change control; system design documentation; system architecture and configuration documentation; automated configuration control mechanisms; change control records; system component inventory; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration change control responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; members of change control board or similar
      TEST: Organizational processes for configuration change control; automated mechanisms implementing changes to current system baseline
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated tools can improve the accuracy, consistency, and availability of configuration baseline information. Automation can also provide data aggregation and data correlation capabilities, alerting mechanisms, and dashboards to support risk-based decision-making within the organization.
  GUIDANCE
  tag nist: ['CM-3 (3)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag odp: %w{cm_03_03_odp}

  describe 'NIST SP 800-53 Rev 5 control CM-3 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
