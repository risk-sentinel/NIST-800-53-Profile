control 'CM-08(01)[01]' do
  impact 0.5
  title "the inventory of system components is updated as part of component installations;"
  desc <<~DESC
    Update the inventory of system components as part of component installations, removals, and system updates.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the inventory of system components is updated as part of component installations;

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system component inventory; configuration management plan; system security plan; system component inventory; inventory reviews and update records; change control records; component installation records; component removal records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with component inventory updating responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for updating the system component inventory; mechanisms supporting and/or implementing system component inventory updates
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations can improve the accuracy, completeness, and consistency of system component inventories if the inventories are updated as part of component installations or removals or during general system updates. If inventories are not updated at these key times, there is a greater likelihood that the information will not be appropriately captured and documented. System updates include hardware, software, and firmware components.
  GUIDANCE
  tag nist: ['CM-8 (1)']
  tag control: 'CM-8 (1)'
  tag objective: 'CM-08(01)[01]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_8_1: true

  describe 'NIST SP 800-53A Rev 5 objective CM-08(01)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
