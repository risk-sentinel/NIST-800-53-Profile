control 'CA-1' do
  impact 0.5
  title 'Policy and Procedures'
  desc <<~DESC
    a. Develop, document, and disseminate to #{input('ca_1_prm_1')}:
      1. #{input('ca_01_odp_03')} assessment, authorization, and monitoring policy that:
        (a) Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
        (b) Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and
      2. Procedures to facilitate the implementation of the assessment, authorization, and monitoring policy and the associated assessment, authorization, and monitoring controls;
    b. Designate an #{input('ca_01_odp_04')} to manage the development, documentation, and dissemination of the assessment, authorization, and monitoring policy and procedures; and
    c. Review and update the current assessment, authorization, and monitoring:
      1. Policy #{input('ca_01_odp_05')} and following #{input('ca_01_odp_06')} ; and
      2. Procedures #{input('ca_01_odp_07')} and following #{input('ca_01_odp_08')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CA-01a.
        CA-01a.[01] an assessment, authorization, and monitoring policy is developed and documented;
        CA-01a.[02] the assessment, authorization, and monitoring policy is disseminated to #{input('ca_01_odp_01')};
        CA-01a.[03] assessment, authorization, and monitoring procedures to facilitate the implementation of the assessment, authorization, and monitoring policy and associated assessment, authorization, and monitoring controls are developed and documented;
        CA-01a.[04] the assessment, authorization, and monitoring procedures are disseminated to #{input('ca_01_odp_02')};
        CA-01a.01
          CA-01a.01(a)
            CA-01a.01(a)[01] the #{input('ca_01_odp_03')} assessment, authorization, and monitoring policy addresses purpose;
            CA-01a.01(a)[02] the #{input('ca_01_odp_03')} assessment, authorization, and monitoring policy addresses scope;
            CA-01a.01(a)[03] the #{input('ca_01_odp_03')} assessment, authorization, and monitoring policy addresses roles;
            CA-01a.01(a)[04] the #{input('ca_01_odp_03')} assessment, authorization, and monitoring policy addresses responsibilities;
            CA-01a.01(a)[05] the #{input('ca_01_odp_03')} assessment, authorization, and monitoring policy addresses management commitment;
            CA-01a.01(a)[06] the #{input('ca_01_odp_03')} assessment, authorization, and monitoring policy addresses coordination among organizational entities;
            CA-01a.01(a)[07] the #{input('ca_01_odp_03')} assessment, authorization, and monitoring policy addresses compliance;
          CA-01a.01(b) the #{input('ca_01_odp_03')} assessment, authorization, and monitoring policy is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines;
      CA-01b. the #{input('ca_01_odp_04')} is designated to manage the development, documentation, and dissemination of the assessment, authorization, and monitoring policy and procedures;
      CA-01c.
        CA-01c.01
          CA-01c.01[01] the current assessment, authorization, and monitoring policy is reviewed and updated #{input('ca_01_odp_05')};
          CA-01c.01[02] the current assessment, authorization, and monitoring policy is reviewed and updated following #{input('ca_01_odp_06')};
        CA-01c.02
          CA-01c.02[01] the current assessment, authorization, and monitoring procedures are reviewed and updated #{input('ca_01_odp_07')};
          CA-01c.02[02] the current assessment, authorization, and monitoring procedures are reviewed and updated following #{input('ca_01_odp_08')}.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy and procedures; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with assessment, authorization, and monitoring policy responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Assessment, authorization, and monitoring policy and procedures address the controls in the CA family that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on the development of assessment, authorization, and monitoring policy and procedures. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission- or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies that reflect the complex nature of organizations. Procedures can be established for security and privacy programs, for mission or business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to assessment, authorization, and monitoring policy and procedures include assessment or audit findings, security incidents or breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.
  GUIDANCE
  tag nist: ['CA-1']
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag odp: %w{ca_01_odp_01 ca_01_odp_02 ca_01_odp_03 ca_01_odp_04 ca_01_odp_05 ca_01_odp_06 ca_01_odp_07 ca_01_odp_08 ca_1_prm_1}

  describe 'NIST SP 800-53 Rev 5 control CA-1' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
