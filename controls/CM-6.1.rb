control 'CM-6 (1)' do
  impact 0.5
  title 'Automated Management, Application, and Verification'
  desc <<~DESC
    Manage, apply, and verify configuration settings for #{input('cm_06_01_odp_01')} using #{input('cm_6_1_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-06(01)[01] configuration settings for #{input('cm_06_01_odp_01')} are managed using #{input('cm_06_01_odp_02')};
      CM-06(01)[02] configuration settings for #{input('cm_06_01_odp_01')} are applied using #{input('cm_06_01_odp_03')};
      CM-06(01)[03] configuration settings for #{input('cm_06_01_odp_01')} are verified using #{input('cm_06_01_odp_04')}.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing configuration settings for the system; configuration management plan; system design documentation; system configuration settings and associated documentation; system component inventory; common secure configuration checklists; change control records; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with security configuration management responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Organizational processes for managing configuration settings; automated mechanisms implemented to manage, apply, and verify system configuration settings
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated tools (e.g., hardening tools, baseline configuration tools) can improve the accuracy, consistency, and availability of configuration settings information. Automation can also provide data aggregation and data correlation capabilities, alerting mechanisms, and dashboards to support risk-based decision-making within the organization.
  GUIDANCE
  tag nist: ['CM-6 (1)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{cm_06_01_odp_01 cm_06_01_odp_02 cm_06_01_odp_03 cm_06_01_odp_04 cm_6_1_prm_2}

  describe 'NIST SP 800-53 Rev 5 control CM-6 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
