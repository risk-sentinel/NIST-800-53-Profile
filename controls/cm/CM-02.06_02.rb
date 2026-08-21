control 'CM-02(06)[02]' do
  impact 0.5
  title "a baseline configuration for test environments that is managed separately from the operational baseline configuration is maintained."
  desc <<~DESC
    Maintain a baseline configuration for system development and test environments that is managed separately from the operational baseline configuration.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a baseline configuration for test environments that is managed separately from the operational baseline configuration is maintained.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing the baseline configuration of the system; configuration management plan; system design documentation; system architecture and configuration documentation; system configuration settings and associated documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing baseline configurations; mechanisms implementing separate baseline configurations for development, test, and operational environments
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Establishing separate baseline configurations for development, testing, and operational environments protects systems from unplanned or unexpected events related to development and testing activities. Separate baseline configurations allow organizations to apply the configuration management that is most appropriate for each type of configuration. For example, the management of operational configurations typically emphasizes the need for stability, while the management of development or test configurations requires greater flexibility. Configurations in the test environment mirror configurations in the operational environment to the extent practicable so that the results of the testing are representative of the proposed changes to the operational systems. Separate baseline configurations do not necessarily require separate physical environments.
  GUIDANCE
  tag nist: ['CM-2 (6)']
  tag control: 'CM-2 (6)'
  tag objective: 'CM-02(06)[02]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_2_6: true

  describe 'NIST SP 800-53A Rev 5 objective CM-02(06)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
