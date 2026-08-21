control 'AT-1' do
  impact 0.5
  title 'Policy and Procedures'
  desc <<~DESC
    a. Develop, document, and disseminate to #{input('at_1_prm_1')}:
      1. #{input('at_01_odp_03')} awareness and training policy that:
        (a) Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
        (b) Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and
      2. Procedures to facilitate the implementation of the awareness and training policy and the associated awareness and training controls;
    b. Designate an #{input('at_01_odp_04')} to manage the development, documentation, and dissemination of the awareness and training policy and procedures; and
    c. Review and update the current awareness and training:
      1. Policy #{input('at_01_odp_05')} and following #{input('at_01_odp_06')} ; and
      2. Procedures #{input('at_01_odp_07')} and following #{input('at_01_odp_08')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AT-01a.
        AT-01a.[01] an awareness and training policy is developed and documented;
        AT-01a.[02] the awareness and training policy is disseminated to #{input('at_01_odp_01')};
        AT-01a.[03] awareness and training procedures to facilitate the implementation of the awareness and training policy and associated access controls are developed and documented;
        AT-01a.[04] the awareness and training procedures are disseminated to #{input('at_01_odp_02')}.
        AT-01a.01
          AT-01a.01(a)
            AT-01a.01(a)[01] the #{input('at_01_odp_03')} awareness and training policy addresses purpose;
            AT-01a.01(a)[02] the #{input('at_01_odp_03')} awareness and training policy addresses scope;
            AT-01a.01(a)[03] the #{input('at_01_odp_03')} awareness and training policy addresses roles;
            AT-01a.01(a)[04] the #{input('at_01_odp_03')} awareness and training policy addresses responsibilities;
            AT-01a.01(a)[05] the #{input('at_01_odp_03')} awareness and training policy addresses management commitment;
            AT-01a.01(a)[06] the #{input('at_01_odp_03')} awareness and training policy addresses coordination among organizational entities;
            AT-01a.01(a)[07] the #{input('at_01_odp_03')} awareness and training policy addresses compliance; and
          AT-01a.01(b) the #{input('at_01_odp_03')} awareness and training policy is consistent with applicable laws, Executive Orders, directives, regulations, policies, standards, and guidelines; and
      AT-01b. the #{input('at_01_odp_04')} is designated to manage the development, documentation, and dissemination of the awareness and training policy and procedures;
      AT-01c.
        AT-01c.01
          AT-01c.01[01] the current awareness and training policy is reviewed and updated #{input('at_01_odp_05')};
          AT-01c.01[02] the current awareness and training policy is reviewed and updated following #{input('at_01_odp_06')};
        AT-01c.02
          AT-01c.02[01] the current awareness and training procedures are reviewed and updated #{input('at_01_odp_07')};
          AT-01c.02[02] the current awareness and training procedures are reviewed and updated following #{input('at_01_odp_08')}.

    Assessment methods and objects:
      EXAMINE: System security plan; privacy plan; awareness and training policy and procedures; other relevant documents or records
      INTERVIEW: Organizational personnel with awareness and training responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Awareness and training policy and procedures address the controls in the AT family that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on the development of awareness and training policy and procedures. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission- or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies that reflect the complex nature of organizations. Procedures can be established for security and privacy programs, for mission or business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to awareness and training policy and procedures include assessment or audit findings, security incidents or breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.
  GUIDANCE
  tag nist: ['AT-1']
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag odp: %w{at_01_odp_01 at_01_odp_02 at_01_odp_03 at_01_odp_04 at_01_odp_05 at_01_odp_06 at_01_odp_07 at_01_odp_08 at_1_prm_1}

  describe 'NIST SP 800-53 Rev 5 control AT-1' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
