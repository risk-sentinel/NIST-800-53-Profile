control 'CP-06b.' do
  impact 0.5
  title "the alternate storage site provides controls equivalent to that of the primary site."
  desc <<~DESC
    a. Establish an alternate storage site, including necessary agreements to permit the storage and retrieval of system backup information; and
    b. Ensure that the alternate storage site provides controls equivalent to that of the primary site.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the alternate storage site provides controls equivalent to that of the primary site.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternate storage sites; contingency plan; alternate storage site agreements; primary storage site agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan alternate storage site responsibilities; organizational personnel with system recovery responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for storing and retrieving system backup information at the alternate storage site; mechanisms supporting and/or implementing the storage and retrieval of system backup information at the alternate storage site
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Alternate storage sites are geographically distinct from primary storage sites and maintain duplicate copies of information and data if the primary storage site is not available. Similarly, alternate processing sites provide processing capability if the primary processing site is not available. Geographically distributed architectures that support contingency requirements may be considered alternate storage sites. Items covered by alternate storage site agreements include environmental conditions at the alternate sites, access rules for systems and facilities, physical and environmental protection requirements, and coordination of delivery and retrieval of backup media. Alternate storage sites reflect the requirements in contingency plans so that organizations can maintain essential mission and business functions despite compromise, failure, or disruption in organizational systems.
  GUIDANCE
  tag nist: ['CP-6']
  tag control: 'CP-6'
  tag objective: 'CP-06b.'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_6: true

  describe 'NIST SP 800-53A Rev 5 objective CP-06b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
