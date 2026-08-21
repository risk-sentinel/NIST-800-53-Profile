control 'CP-02a.04' do
  impact 0.5
  title "a contingency plan for the system is developed that addresses maintaining essential mission and business functions despite a system disruption, compromise, or failure;"
  desc <<~DESC
    a. Develop a contingency plan for the system that:
      1. Identifies essential mission and business functions and associated contingency requirements;
      2. Provides recovery objectives, restoration priorities, and metrics;
      3. Addresses contingency roles, responsibilities, assigned individuals with contact information;
      4. Addresses maintaining essential mission and business functions despite a system disruption, compromise, or failure;
      5. Addresses eventual, full system restoration without deterioration of the controls originally planned and implemented;
      6. Addresses the sharing of contingency information; and
      7. Is reviewed and approved by #{input('cp_2_prm_1')};
    b. Distribute copies of the contingency plan to #{input('cp_2_prm_2')};
    c. Coordinate contingency planning activities with incident handling activities;
    d. Review the contingency plan for the system #{input('cp_02_odp_05')};
    e. Update the contingency plan to address changes to the organization, system, or environment of operation and problems encountered during contingency plan implementation, execution, or testing;
    f. Communicate contingency plan changes to #{input('cp_2_prm_4')};
    g. Incorporate lessons learned from contingency plan testing, training, or actual contingency activities into contingency testing and training; and
    h. Protect the contingency plan from unauthorized disclosure and modification.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a contingency plan for the system is developed that addresses maintaining essential mission and business functions despite a system disruption, compromise, or failure;

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency operations for the system; contingency plan; evidence of contingency plan reviews and updates; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning and plan implementation responsibilities; organizational personnel with incident handling responsibilities; organizational personnel with knowledge of requirements for mission and business functions; organizational personnel with information security responsibilities
      TEST: Organizational processes for contingency plan development, review, update, and protection; mechanisms for developing, reviewing, updating, and/or protecting the contingency plan
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Contingency planning for systems is part of an overall program for achieving continuity of operations for organizational mission and business functions. Contingency planning addresses system restoration and implementation of alternative mission or business processes when systems are compromised or breached. Contingency planning is considered throughout the system development life cycle and is a fundamental part of the system design. Systems can be designed for redundancy, to provide backup capabilities, and for resilience. Contingency plans reflect the degree of restoration required for organizational systems since not all systems need to fully recover to achieve the level of continuity of operations desired. System recovery objectives reflect applicable laws, executive orders, directives, regulations, policies, standards, guidelines, organizational risk tolerance, and system impact level.

    Actions addressed in contingency plans include orderly system degradation, system shutdown, fallback to a manual mode, alternate information flows, and operating in modes reserved for when systems are under attack. By coordinating contingency planning with incident handling activities, organizations ensure that the necessary planning activities are in place and activated in the event of an incident. Organizations consider whether continuity of operations during an incident conflicts with the capability to automatically disable the system, as specified in [IR-4(5)](#ir-4.5) . Incident response planning is part of contingency planning for organizations and is addressed in the [IR](#ir) (Incident Response) family.
  GUIDANCE
  tag nist: ['CP-2']
  tag control: 'CP-2'
  tag objective: 'CP-02a.04'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_2: true
  tag odp: %w{cp_02_odp_05 cp_2_prm_1 cp_2_prm_2 cp_2_prm_4}

  describe 'NIST SP 800-53A Rev 5 objective CP-02a.04' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
