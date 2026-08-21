control 'CM-08(02)[01]' do
  impact 0.5
  title "#{input('cm_08_02_odp_01')} are used to maintain the currency of the system component inventory;"
  desc <<~DESC
    Maintain the currency, completeness, accuracy, and availability of the inventory of system components using #{input('cm_8_2_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('cm_08_02_odp_01')} are used to maintain the currency of the system component inventory;

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system component inventory; configuration management plan; system design documentation; system security plan; system component inventory; change control records; system maintenance records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with component inventory management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Organizational processes for maintaining the system component inventory; automated mechanisms supporting and/or implementing the system component inventory
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations maintain system inventories to the extent feasible. For example, virtual machines can be difficult to monitor because such machines are not visible to the network when not in use. In such cases, organizations maintain as up-to-date, complete, and accurate an inventory as is deemed reasonable. Automated maintenance can be achieved by the implementation of [CM-2(2)](#cm-2.2) for organizations that combine system component inventory and baseline configuration activities.
  GUIDANCE
  tag nist: ['CM-8 (2)']
  tag control: 'CM-8 (2)'
  tag objective: 'CM-08(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_cm_8_2: true
  tag odp: %w{cm_08_02_odp_01 cm_8_2_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective CM-08(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
