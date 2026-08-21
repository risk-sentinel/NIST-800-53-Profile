control 'RA-1' do
  impact 0.5
  title 'Policy and Procedures'
  desc <<~DESC
    a. Develop, document, and disseminate to #{input('ra_1_prm_1')}:
      1. #{input('ra_01_odp_03')} risk assessment policy that:
        (a) Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
        (b) Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and
      2. Procedures to facilitate the implementation of the risk assessment policy and the associated risk assessment controls;
    b. Designate an #{input('ra_01_odp_04')} to manage the development, documentation, and dissemination of the risk assessment policy and procedures; and
    c. Review and update the current risk assessment:
      1. Policy #{input('ra_01_odp_05')} and following #{input('ra_01_odp_06')} ; and
      2. Procedures #{input('ra_01_odp_07')} and following #{input('ra_01_odp_08')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      RA-01a.
        RA-01a.[01] a risk assessment policy is developed and documented;
        RA-01a.[02] the risk assessment policy is disseminated to #{input('ra_01_odp_01')};
        RA-01a.[03] risk assessment procedures to facilitate the implementation of the risk assessment policy and associated risk assessment controls are developed and documented;
        RA-01a.[04] the risk assessment procedures are disseminated to #{input('ra_01_odp_02')};
        RA-01a.01
          RA-01a.01(a)
            RA-01a.01(a)[01] the #{input('ra_01_odp_03')} risk assessment policy addresses purpose;
            RA-01a.01(a)[02] the #{input('ra_01_odp_03')} risk assessment policy addresses scope;
            RA-01a.01(a)[03] the #{input('ra_01_odp_03')} risk assessment policy addresses roles;
            RA-01a.01(a)[04] the #{input('ra_01_odp_03')} risk assessment policy addresses responsibilities;
            RA-01a.01(a)[05] the #{input('ra_01_odp_03')} risk assessment policy addresses management commitment;
            RA-01a.01(a)[06] the #{input('ra_01_odp_03')} risk assessment policy addresses coordination among organizational entities;
            RA-01a.01(a)[07] the #{input('ra_01_odp_03')} risk assessment policy addresses compliance;
          RA-01a.01(b) the #{input('ra_01_odp_03')} risk assessment policy is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines;
      RA-01b. the #{input('ra_01_odp_04')} is designated to manage the development, documentation, and dissemination of the risk assessment policy and procedures;
      RA-01c.
        RA-01c.01
          RA-01c.01[01] the current risk assessment policy is reviewed and updated #{input('ra_01_odp_05')};
          RA-01c.01[02] the current risk assessment policy is reviewed and updated following #{input('ra_01_odp_06')};
        RA-01c.02
          RA-01c.02[01] the current risk assessment procedures are reviewed and updated #{input('ra_01_odp_07')};
          RA-01c.02[02] the current risk assessment procedures are reviewed and updated following #{input('ra_01_odp_08')}.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy and procedures; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with risk assessment responsibilities; organizational personnel with security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Risk assessment policy and procedures address the controls in the RA family that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on the development of risk assessment policy and procedures. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission- or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies reflecting the complex nature of organizations. Procedures can be established for security and privacy programs, for mission or business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to risk assessment policy and procedures include assessment or audit findings, security incidents or breaches, or changes in laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.
  GUIDANCE
  tag nist: ['RA-1']
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag odp: %w{ra_01_odp_01 ra_01_odp_02 ra_01_odp_03 ra_01_odp_04 ra_01_odp_05 ra_01_odp_06 ra_01_odp_07 ra_01_odp_08 ra_1_prm_1}

  describe 'NIST SP 800-53 Rev 5 control RA-1' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
