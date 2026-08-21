control 'IR-1' do
  impact 0.5
  title 'Policy and Procedures'
  desc <<~DESC
    a. Develop, document, and disseminate to #{input('ir_1_prm_1')}:
      1. #{input('ir_01_odp_03')} incident response policy that:
        (a) Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
        (b) Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and
      2. Procedures to facilitate the implementation of the incident response policy and the associated incident response controls;
    b. Designate an #{input('ir_01_odp_04')} to manage the development, documentation, and dissemination of the incident response policy and procedures; and
    c. Review and update the current incident response:
      1. Policy #{input('ir_01_odp_05')} and following #{input('ir_01_odp_06')} ; and
      2. Procedures #{input('ir_01_odp_07')} and following #{input('ir_01_odp_08')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-01a.
        IR-01a.[01] an incident response policy is developed and documented;
        IR-01a.[02] the incident response policy is disseminated to #{input('ir_01_odp_01')};
        IR-01a.[03] incident response procedures to facilitate the implementation of the incident response policy and associated incident response controls are developed and documented;
        IR-01a.[04] the incident response procedures are disseminated to #{input('ir_01_odp_02')};
        IR-01a.01
          IR-01a.01(a)
            IR-01a.01(a)[01] the #{input('ir_01_odp_03')} incident response policy addresses purpose;
            IR-01a.01(a)[02] the #{input('ir_01_odp_03')} incident response policy addresses scope;
            IR-01a.01(a)[03] the #{input('ir_01_odp_03')} incident response policy addresses roles;
            IR-01a.01(a)[04] the #{input('ir_01_odp_03')} incident response policy addresses responsibilities;
            IR-01a.01(a)[05] the #{input('ir_01_odp_03')} incident response policy addresses management commitment;
            IR-01a.01(a)[06] the #{input('ir_01_odp_03')} incident response policy addresses coordination among organizational entities;
            IR-01a.01(a)[07] the #{input('ir_01_odp_03')} incident response policy addresses compliance;
          IR-01a.01(b) the #{input('ir_01_odp_03')} incident response policy is consistent with applicable laws, Executive Orders, directives, regulations, policies, standards, and guidelines;
      IR-01b. the #{input('ir_01_odp_04')} is designated to manage the development, documentation, and dissemination of the incident response policy and procedures;
      IR-01c.
        IR-01c.01
          IR-01c.01[01] the current incident response policy is reviewed and updated #{input('ir_01_odp_05')};
          IR-01c.01[02] the current incident response policy is reviewed and updated following #{input('ir_01_odp_06')};
        IR-01c.02
          IR-01c.02[01] the current incident response procedures are reviewed and updated #{input('ir_01_odp_07')};
          IR-01c.02[02] the current incident response procedures are reviewed and updated following #{input('ir_01_odp_08')}.

    Assessment methods and objects:
      EXAMINE: Incident response policy and procedures; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Incident response policy and procedures address the controls in the IR family that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on the development of incident response policy and procedures. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission- or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies that reflect the complex nature of organizations. Procedures can be established for security and privacy programs, for mission or business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to incident response policy and procedures include assessment or audit findings, security incidents or breaches, or changes in laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.
  GUIDANCE
  tag nist: ['IR-1']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag odp: %w{ir_01_odp_01 ir_01_odp_02 ir_01_odp_03 ir_01_odp_04 ir_01_odp_05 ir_01_odp_06 ir_01_odp_07 ir_01_odp_08 ir_1_prm_1}

  describe 'NIST SP 800-53 Rev 5 control IR-1' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
