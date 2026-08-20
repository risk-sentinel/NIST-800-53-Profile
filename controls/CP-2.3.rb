control 'CP-2 (3)' do
  impact 0.5
  title 'Resume Mission and Business Functions'
  desc <<~DESC
    Plan for the resumption of #{input('cp_02_03_odp_01')} mission and business functions within #{input('cp_02_03_odp_02')} of contingency plan activation.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-02(03) the resumption of #{input('cp_02_03_odp_01')} mission and business functions are planned for within #{input('cp_02_03_odp_02')} of contingency plan activation.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency operations for the system; contingency plan; business impact assessment; system security plan; privacy plan; other related plans; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning and plan implementation responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with knowledge of requirements for mission and business functions
      TEST: Organizational processes for resumption of missions and business functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may choose to conduct contingency planning activities to resume mission and business functions as part of business continuity planning or as part of business impact analyses. Organizations prioritize the resumption of mission and business functions. The time period for resuming mission and business functions may be dependent on the severity and extent of the disruptions to the system and its supporting infrastructure.
  GUIDANCE
  tag nist: ['CP-2 (3)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{cp_02_03_odp_01 cp_02_03_odp_02}

  describe 'NIST SP 800-53 Rev 5 control CP-2 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
