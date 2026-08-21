control 'CM-09a.[03]' do
  impact 0.5
  title "the configuration management plan addresses configuration management processes and procedures;"
  desc <<~DESC
    Develop, document, and implement a configuration management plan for the system that:
      a. Addresses roles, responsibilities, and configuration management processes and procedures;
      b. Establishes a process for identifying configuration items throughout the system development life cycle and for managing the configuration of the configuration items;
      c. Defines the configuration items for the system and places the configuration items under configuration management;
      d. Is reviewed and approved by #{input('cm_09_odp')} ; and
      e. Protects the configuration management plan from unauthorized disclosure and modification.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the configuration management plan addresses configuration management processes and procedures;

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing configuration management planning; configuration management plan; system design documentation; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for developing the configuration management plan; organizational personnel with responsibilities for implementing and managing processes defined in the configuration management plan; organizational personnel with responsibilities for protecting the configuration management plan; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Organizational processes for developing and documenting the configuration management plan; organizational processes for identifying and managing configuration items; organizational processes for protecting the configuration management plan; mechanisms implementing the configuration management plan; mechanisms for managing configuration items; mechanisms for protecting the configuration management plan
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Configuration management activities occur throughout the system development life cycle. As such, there are developmental configuration management activities (e.g., the control of code and software libraries) and operational configuration management activities (e.g., control of installed components and how the components are configured). Configuration management plans satisfy the requirements in configuration management policies while being tailored to individual systems. Configuration management plans define processes and procedures for how configuration management is used to support system development life cycle activities.

    Configuration management plans are generated during the development and acquisition stage of the system development life cycle. The plans describe how to advance changes through change management processes; update configuration settings and baselines; maintain component inventories; control development, test, and operational environments; and develop, release, and update key documents.

    Organizations can employ templates to help ensure the consistent and timely development and implementation of configuration management plans. Templates can represent a configuration management plan for the organization with subsets of the plan implemented on a system by system basis. Configuration management approval processes include the designation of key stakeholders responsible for reviewing and approving proposed changes to systems, and personnel who conduct security and privacy impact analyses prior to the implementation of changes to the systems. Configuration items are the system components, such as the hardware, software, firmware, and documentation to be configuration-managed. As systems continue through the system development life cycle, new configuration items may be identified, and some existing configuration items may no longer need to be under configuration control.
  GUIDANCE
  tag nist: ['CM-9']
  tag control: 'CM-9'
  tag objective: 'CM-09a.[03]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_9: true
  tag odp: %w{cm_09_odp}

  describe 'NIST SP 800-53A Rev 5 objective CM-09a.[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
