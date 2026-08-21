control 'CM-13' do
  impact 0.5
  title "a map of system data actions is developed and documented."
  desc <<~DESC
    Develop and document a map of system data actions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a map of system data actions is developed and documented.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures for identification and documentation of information location; procedures for mapping data actions; configuration management plan; system security plan; privacy plan; system design documentation; PII inventory documentation; data mapping documentation; change control records; system component inventory; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for managing information location; organizational personnel responsible for data action mapping; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Organizational processes governing information location; mechanisms supporting or implementing data action mapping
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Data actions are system operations that process personally identifiable information. The processing of such information encompasses the full information life cycle, which includes collection, generation, transformation, use, disclosure, retention, and disposal. A map of system data actions includes discrete data actions, elements of personally identifiable information being processed in the data actions, system components involved in the data actions, and the owners or operators of the system components. Understanding what personally identifiable information is being processed (e.g., the sensitivity of the personally identifiable information), how personally identifiable information is being processed (e.g., if the data action is visible to the individual or is processed in another part of the system), and by whom (e.g., individuals may have different privacy perceptions based on the entity that is processing the personally identifiable information) provides a number of contextual factors that are important to assessing the degree of privacy risk created by the system. Data maps can be illustrated in different ways, and the level of detail may vary based on the mission and business needs of the organization. The data map may be an overlay of any system design artifact that the organization is using. The development of this map may necessitate coordination between the privacy and security programs regarding the covered data actions and the components that are identified as part of the system.
  GUIDANCE
  tag nist: ['CM-13']
  tag control: 'CM-13'
  tag objective: 'CM-13'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_13: true

  describe 'NIST SP 800-53A Rev 5 objective CM-13' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
