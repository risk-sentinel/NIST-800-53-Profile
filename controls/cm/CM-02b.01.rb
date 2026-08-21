control 'CM-02b.01' do
  impact 0.5
  title "the baseline configuration of the system is reviewed and updated #{input('cm_02_odp_01')};"
  desc <<~DESC
    a. Develop, document, and maintain under configuration control, a current baseline configuration of the system; and
    b. Review and update the baseline configuration of the system:
      1. #{input('cm_02_odp_01')};
      2. When required due to #{input('cm_02_odp_02')} ; and
      3. When system components are installed or upgraded.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the baseline configuration of the system is reviewed and updated #{input('cm_02_odp_01')};

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing the baseline configuration of the system; configuration management plan; enterprise architecture documentation; system design documentation; system security plan; privacy plan; system architecture and configuration documentation; system configuration settings and associated documentation; system component inventory; change control records; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration management responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Organizational processes for managing baseline configurations; mechanisms supporting configuration control of the baseline configuration
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Baseline configurations for systems and system components include connectivity, operational, and communications aspects of systems. Baseline configurations are documented, formally reviewed, and agreed-upon specifications for systems or configuration items within those systems. Baseline configurations serve as a basis for future builds, releases, or changes to systems and include security and privacy control implementations, operational procedures, information about system components, network topology, and logical placement of components in the system architecture. Maintaining baseline configurations requires creating new baselines as organizational systems change over time. Baseline configurations of systems reflect the current enterprise architecture.
  GUIDANCE
  tag nist: ['CM-2']
  tag control: 'CM-2'
  tag objective: 'CM-02b.01'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_2: true
  tag odp: %w{cm_02_odp_01 cm_02_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective CM-02b.01' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
