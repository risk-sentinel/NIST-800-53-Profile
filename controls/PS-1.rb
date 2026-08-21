control 'PS-1' do
  impact 0.5
  title 'Policy and Procedures'
  desc <<~DESC
    a. Develop, document, and disseminate to #{input('ps_1_prm_1')}:
      1. #{input('ps_01_odp_03')} personnel security policy that:
        (a) Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
        (b) Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and
      2. Procedures to facilitate the implementation of the personnel security policy and the associated personnel security controls;
    b. Designate an #{input('ps_01_odp_04')} to manage the development, documentation, and dissemination of the personnel security policy and procedures; and
    c. Review and update the current personnel security:
      1. Policy #{input('ps_01_odp_05')} and following #{input('ps_01_odp_06')} ; and
      2. Procedures #{input('ps_01_odp_07')} and following #{input('ps_01_odp_08')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PS-01a.
        PS-01a.[01] a personnel security policy is developed and documented;
        PS-01a.[02] the personnel security policy is disseminated to #{input('ps_01_odp_01')};
        PS-01a.[03] personnel security procedures to facilitate the implementation of the personnel security policy and associated personnel security controls are developed and documented;
        PS-01a.[04] the personnel security procedures are disseminated to #{input('ps_01_odp_02')};
        PS-01a.01
          PS-01a.01(a)
            PS-01a.01(a)[01] the #{input('ps_01_odp_03')} personnel security policy addresses purpose;
            PS-01a.01(a)[02] the #{input('ps_01_odp_03')} personnel security policy addresses scope;
            PS-01a.01(a)[03] the #{input('ps_01_odp_03')} personnel security policy addresses roles;
            PS-01a.01(a)[04] the #{input('ps_01_odp_03')} personnel security policy addresses responsibilities;
            PS-01a.01(a)[05] the #{input('ps_01_odp_03')} personnel security policy addresses management commitment;
            PS-01a.01(a)[06] the #{input('ps_01_odp_03')} personnel security policy addresses coordination among organizational entities;
            PS-01a.01(a)[07] the #{input('ps_01_odp_03')} personnel security policy addresses compliance;
          PS-01a.01(b) the #{input('ps_01_odp_03')} personnel security policy is consistent with applicable laws, Executive Orders, directives, regulations, policies, standards, and guidelines;
      PS-01b. the #{input('ps_01_odp_04')} is designated to manage the development, documentation, and dissemination of the personnel security policy and procedures;
      PS-01c.
        PS-01c.01
          PS-01c.01[01] the current personnel security policy is reviewed and updated #{input('ps_01_odp_05')};
          PS-01c.01[02] the current personnel security policy is reviewed and updated following #{input('ps_01_odp_06')};
        PS-01c.02
          PS-01c.02[01] the current personnel security procedures are reviewed and updated #{input('ps_01_odp_07')};
          PS-01c.02[02] the current personnel security procedures are reviewed and updated following #{input('ps_01_odp_08')}.

    Assessment methods and objects:
      EXAMINE: Personnel security policy; personnel security procedures; system security plan; privacy plan; risk management strategy documentation; audit findings; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Personnel security policy and procedures for the controls in the PS family that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on their development. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission level or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies reflecting the complex nature of organizations. Procedures can be established for security and privacy programs, for mission/business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to personnel security policy and procedures include, but are not limited to, assessment or audit findings, security incidents or breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.
  GUIDANCE
  tag nist: ['PS-1']
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ps_01_odp_01 ps_01_odp_02 ps_01_odp_03 ps_01_odp_04 ps_01_odp_05 ps_01_odp_06 ps_01_odp_07 ps_01_odp_08 ps_1_prm_1}

  describe 'NIST SP 800-53 Rev 5 control PS-1' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
