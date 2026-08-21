control 'CM-12(01)' do
  impact 0.5
  title "automated tools are used to identify #{input('cm_12_01_odp_01')} on #{input('cm_12_01_odp_02')} to ensure that controls are in place to protect organizational information and individual privacy."
  desc <<~DESC
    Use automated tools to identify #{input('cm_12_01_odp_01')} on #{input('cm_12_01_odp_02')} to ensure controls are in place to protect organizational information and individual privacy.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      automated tools are used to identify #{input('cm_12_01_odp_01')} on #{input('cm_12_01_odp_02')} to ensure that controls are in place to protect organizational information and individual privacy.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing identification and documentation of information location; configuration management plan; system design documentation; PII inventory documentation; data mapping documentation; change control records; system component inventory; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for managing information location; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Organizational processes governing information location; automated mechanisms enforcing policies and methods for governing information location; automated tools used to identify information on system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The use of automated tools helps to increase the effectiveness and efficiency of the information location capability implemented within the system. Automation also helps organizations manage the data produced during information location activities and share such information across the organization. The output of automated information location tools can be used to guide and inform system architecture and design decisions.
  GUIDANCE
  tag nist: ['CM-12 (1)']
  tag control: 'CM-12 (1)'
  tag objective: 'CM-12(01)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_12_1: true
  tag odp: %w{cm_12_01_odp_01 cm_12_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective CM-12(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
