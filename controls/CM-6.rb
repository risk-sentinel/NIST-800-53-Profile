control 'CM-6' do
  impact 0.5
  title 'Configuration Settings'
  desc <<~DESC
    a. Establish and document configuration settings for components employed within the system that reflect the most restrictive mode consistent with operational requirements using #{input('cm_06_odp_01')};
    b. Implement the configuration settings;
    c. Identify, document, and approve any deviations from established configuration settings for #{input('cm_06_odp_02')} based on #{input('cm_06_odp_03')} ; and
    d. Monitor and control changes to the configuration settings in accordance with organizational policies and procedures.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-06a. configuration settings that reflect the most restrictive mode consistent with operational requirements are established and documented for components employed within the system using #{input('cm_06_odp_01')};
      CM-06b. the configuration settings documented in CM-06a are implemented;
      CM-06c.
        CM-06c.[01] any deviations from established configuration settings for #{input('cm_06_odp_02')} are identified and documented based on #{input('cm_06_odp_03')};
        CM-06c.[02] any deviations from established configuration settings for #{input('cm_06_odp_02')} are approved;
      CM-06d.
        CM-06d.[01] changes to the configuration settings are monitored in accordance with organizational policies and procedures;
        CM-06d.[02] changes to the configuration settings are controlled in accordance with organizational policies and procedures.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing configuration settings for the system; configuration management plan; system design documentation; system configuration settings and associated documentation; common secure configuration checklists; system component inventory; evidence supporting approved deviations from established configuration settings; change control records; system data processing and retention permissions; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with security configuration management responsibilities; organizational personnel with privacy configuration management responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Organizational processes for managing configuration settings; mechanisms that implement, monitor, and/or control system configuration settings; mechanisms that identify and/or document deviations from established configuration settings
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Configuration settings are the parameters that can be changed in the hardware, software, or firmware components of the system that affect the security and privacy posture or functionality of the system. Information technology products for which configuration settings can be defined include mainframe computers, servers, workstations, operating systems, mobile devices, input/output devices, protocols, and applications. Parameters that impact the security posture of systems include registry settings; account, file, or directory permission settings; and settings for functions, protocols, ports, services, and remote connections. Privacy parameters are parameters impacting the privacy posture of systems, including the parameters required to satisfy other privacy controls. Privacy parameters include settings for access controls, data processing preferences, and processing and retention permissions. Organizations establish organization-wide configuration settings and subsequently derive specific configuration settings for systems. The established settings become part of the configuration baseline for the system.

    Common secure configurations (also known as security configuration checklists, lockdown and hardening guides, and security reference guides) provide recognized, standardized, and established benchmarks that stipulate secure configuration settings for information technology products and platforms as well as instructions for configuring those products or platforms to meet operational requirements. Common secure configurations can be developed by a variety of organizations, including information technology product developers, manufacturers, vendors, federal agencies, consortia, academia, industry, and other organizations in the public and private sectors.

    Implementation of a common secure configuration may be mandated at the organization level, mission and business process level, system level, or at a higher level, including by a regulatory agency. Common secure configurations include the United States Government Configuration Baseline [USGCB](#98498928-3ca3-44b3-8b1e-f48685373087) and security technical implementation guides (STIGs), which affect the implementation of [CM-6](#cm-6) and other controls such as [AC-19](#ac-19) and [CM-7](#cm-7) . The Security Content Automation Protocol (SCAP) and the defined standards within the protocol provide an effective method to uniquely identify, track, and control configuration settings.
  GUIDANCE
  tag nist: ['CM-6']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{cm_06_odp_01 cm_06_odp_02 cm_06_odp_03}

  describe 'NIST SP 800-53 Rev 5 control CM-6' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
