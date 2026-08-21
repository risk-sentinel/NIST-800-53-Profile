control 'CM-02(02)[02]' do
  impact 0.5
  title "the completeness of the baseline configuration of the system is maintained using #{input('cm_02_02_odp')};"
  desc <<~DESC
    Maintain the currency, completeness, accuracy, and availability of the baseline configuration of the system using #{input('cm_02_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the completeness of the baseline configuration of the system is maintained using #{input('cm_02_02_odp')};

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing the baseline configuration of the system; configuration management plan; system design documentation; system architecture and configuration documentation; system configuration settings and associated documentation; system component inventory; configuration change control records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing baseline configurations; automated mechanisms implementing baseline configuration maintenance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms that help organizations maintain consistent baseline configurations for systems include configuration management tools, hardware, software, firmware inventory tools, and network management tools. Automated tools can be used at the organization level, mission and business process level, or system level on workstations, servers, notebook computers, network components, or mobile devices. Tools can be used to track version numbers on operating systems, applications, types of software installed, and current patch levels. Automation support for accuracy and currency can be satisfied by the implementation of [CM-8(2)](#cm-8.2) for organizations that combine system component inventory and baseline configuration activities.
  GUIDANCE
  tag nist: ['CM-2 (2)']
  tag control: 'CM-2 (2)'
  tag objective: 'CM-02(02)[02]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_2_2: true
  tag odp: %w{cm_02_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective CM-02(02)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
