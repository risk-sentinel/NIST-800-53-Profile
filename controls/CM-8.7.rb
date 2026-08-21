control 'CM-8 (7)' do
  impact 0.5
  title 'Centralized Repository'
  desc <<~DESC
    Provide a centralized repository for the inventory of system components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-08(07) a centralized repository for the system component inventory is provided.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system component inventory; configuration management plan; system design documentation; system security plan; system component inventory; system configuration settings and associated documentation; change control records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with component inventory management responsibilities; organizational personnel with security responsibilities
      TEST: Organizational processes for managing the system component inventory; mechanisms supporting and/or implementing system component inventory
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may implement centralized system component inventories that include components from all organizational systems. Centralized repositories of component inventories provide opportunities for efficiencies in accounting for organizational hardware, software, and firmware assets. Such repositories may also help organizations rapidly identify the location and responsible individuals of components that have been compromised, breached, or are otherwise in need of mitigation actions. Organizations ensure that the resulting centralized inventories include system-specific information required for proper component accountability.
  GUIDANCE
  tag nist: ['CM-8 (7)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control CM-8 (7)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
