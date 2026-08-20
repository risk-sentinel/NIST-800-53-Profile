control 'CM-7' do
  impact 0.5
  title 'Least Functionality'
  desc <<~DESC
    a. Configure the system to provide only #{input('cm_07_odp_01')} ; and
    b. Prohibit or restrict the use of the following functions, ports, protocols, software, and/or services: #{input('cm_7_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-07a. the system is configured to provide only #{input('cm_07_odp_01')};
      CM-07b.
        CM-07b.[01] the use of #{input('cm_07_odp_02')} is prohibited or restricted;
        CM-07b.[02] the use of #{input('cm_07_odp_03')} is prohibited or restricted;
        CM-07b.[03] the use of #{input('cm_07_odp_04')} is prohibited or restricted;
        CM-07b.[04] the use of #{input('cm_07_odp_05')} is prohibited or restricted;
        CM-07b.[05] the use of #{input('cm_07_odp_06')} is prohibited or restricted.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing least functionality in the system; configuration management plan; system design documentation; system configuration settings and associated documentation; system component inventory; common secure configuration checklists; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with security configuration management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Organizational processes prohibiting or restricting functions, ports, protocols, software, and/or services; mechanisms implementing restrictions or prohibition of functions, ports, protocols, software, and/or services
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Systems provide a wide variety of functions and services. Some of the functions and services routinely provided by default may not be necessary to support essential organizational missions, functions, or operations. Additionally, it is sometimes convenient to provide multiple services from a single system component, but doing so increases risk over limiting the services provided by that single component. Where feasible, organizations limit component functionality to a single function per component. Organizations consider removing unused or unnecessary software and disabling unused or unnecessary physical and logical ports and protocols to prevent unauthorized connection of components, transfer of information, and tunneling. Organizations employ network scanning tools, intrusion detection and prevention systems, and end-point protection technologies, such as firewalls and host-based intrusion detection systems, to identify and prevent the use of prohibited functions, protocols, ports, and services. Least functionality can also be achieved as part of the fundamental design and development of the system (see [SA-8](#sa-8), [SC-2](#sc-2) , and [SC-3](#sc-3)).
  GUIDANCE
  tag nist: ['CM-7']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{cm_07_odp_01 cm_07_odp_02 cm_07_odp_03 cm_07_odp_04 cm_07_odp_05 cm_07_odp_06 cm_7_prm_2}

  describe 'NIST SP 800-53 Rev 5 control CM-7' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
