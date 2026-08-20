control 'CM-2 (3)' do
  impact 0.5
  title 'Retention of Previous Configurations'
  desc <<~DESC
    Retain #{input('cm_02_03_odp')} of previous versions of baseline configurations of the system to support rollback.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-02(03) #{input('cm_02_03_odp')} of previous baseline configuration version(s) of the system is/are retained to support rollback.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing the baseline configuration of the system; configuration management plan; system architecture and configuration documentation; system configuration settings and associated documentation; copies of previous baseline configuration versions; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing baseline configurations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Retaining previous versions of baseline configurations to support rollback include hardware, software, firmware, configuration files, configuration records, and associated documentation.
  GUIDANCE
  tag nist: ['CM-2 (3)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{cm_02_03_odp}

  describe 'NIST SP 800-53 Rev 5 control CM-2 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
