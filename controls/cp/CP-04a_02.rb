control 'CP-04a.[02]' do
  impact 0.5
  title "#{input('cp_04_odp_02')} are used to determine the effectiveness of the plan;"
  desc <<~DESC
    a. Test the contingency plan for the system #{input('cp_04_odp_01')} using the following tests to determine the effectiveness of the plan and the readiness to execute the plan: #{input('cp_4_prm_2')}.
    b. Review the contingency plan test results; and
    c. Initiate corrective actions, if needed.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('cp_04_odp_02')} are used to determine the effectiveness of the plan;

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency plan testing; contingency plan; contingency plan test documentation; contingency plan test results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for contingency plan testing, reviewing, or responding to contingency plan tests; organizational personnel with information security responsibilities
      TEST: Organizational processes for contingency plan testing; mechanisms supporting the contingency plan and/or contingency plan testing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Methods for testing contingency plans to determine the effectiveness of the plans and identify potential weaknesses include checklists, walk-through and tabletop exercises, simulations (parallel or full interrupt), and comprehensive exercises. Organizations conduct testing based on the requirements in contingency plans and include a determination of the effects on organizational operations, assets, and individuals due to contingency operations. Organizations have flexibility and discretion in the breadth, depth, and timelines of corrective actions.
  GUIDANCE
  tag nist: ['CP-4']
  tag control: 'CP-4'
  tag objective: 'CP-04a.[02]'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_4: true
  tag odp: %w{cp_04_odp_01 cp_04_odp_02 cp_4_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective CP-04a.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
