control 'AU-1' do
  impact 0.5
  title 'Policy and Procedures'
  desc <<~DESC
    a. Develop, document, and disseminate to #{input('au_1_prm_1')}:
      1. #{input('au_01_odp_03')} audit and accountability policy that:
        (a) Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
        (b) Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and
      2. Procedures to facilitate the implementation of the audit and accountability policy and the associated audit and accountability controls;
    b. Designate an #{input('au_01_odp_04')} to manage the development, documentation, and dissemination of the audit and accountability policy and procedures; and
    c. Review and update the current audit and accountability:
      1. Policy #{input('au_01_odp_05')} and following #{input('au_01_odp_06')} ; and
      2. Procedures #{input('au_01_odp_07')} and following #{input('au_01_odp_08')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-01a.
        AU-01a.[01] an audit and accountability policy is developed and documented;
        AU-01a.[02] the audit and accountability policy is disseminated to #{input('au_01_odp_01')};
        AU-01a.[03] audit and accountability procedures to facilitate the implementation of the audit and accountability policy and associated audit and accountability controls are developed and documented;
        AU-01a.[04] the audit and accountability procedures are disseminated to #{input('au_01_odp_02')};
        AU-01a.01
          AU-01a.01(a)
            AU-01a.01(a)[01] the #{input('au_01_odp_03')} of the audit and accountability policy addresses purpose;
            AU-01a.01(a)[02] the #{input('au_01_odp_03')} of the audit and accountability policy addresses scope;
            AU-01a.01(a)[03] the #{input('au_01_odp_03')} of the audit and accountability policy addresses roles;
            AU-01a.01(a)[04] the #{input('au_01_odp_03')} of the audit and accountability policy addresses responsibilities;
            AU-01a.01(a)[05] the #{input('au_01_odp_03')} of the audit and accountability policy addresses management commitment;
            AU-01a.01(a)[06] the #{input('au_01_odp_03')} of the audit and accountability policy addresses coordination among organizational entities;
            AU-01a.01(a)[07] the #{input('au_01_odp_03')} of the audit and accountability policy addresses compliance;
          AU-01a.01(b) the #{input('au_01_odp_03')} of the audit and accountability policy is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines;
      AU-01b. the #{input('au_01_odp_04')} is designated to manage the development, documentation, and dissemination of the audit and accountability policy and procedures;
      AU-01c.
        AU-01c.01
          AU-01c.01[01] the current audit and accountability policy is reviewed and updated #{input('au_01_odp_05')};
          AU-01c.01[02] the current audit and accountability policy is reviewed and updated following #{input('au_01_odp_06')};
        AU-01c.02
          AU-01c.02[01] the current audit and accountability procedures are reviewed and updated #{input('au_01_odp_07')};
          AU-01c.02[02] the current audit and accountability procedures are reviewed and updated following #{input('au_01_odp_08')}.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy and procedures; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Audit and accountability policy and procedures address the controls in the AU family that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on the development of audit and accountability policy and procedures. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission- or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies that reflect the complex nature of organizations. Procedures can be established for security and privacy programs, for mission or business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to audit and accountability policy and procedures include assessment or audit findings, security incidents or breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.
  GUIDANCE
  tag nist: ['AU-1']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag odp: %w{au_01_odp_01 au_01_odp_02 au_01_odp_03 au_01_odp_04 au_01_odp_05 au_01_odp_06 au_01_odp_07 au_01_odp_08 au_1_prm_1}

  describe 'NIST SP 800-53 Rev 5 control AU-1' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
