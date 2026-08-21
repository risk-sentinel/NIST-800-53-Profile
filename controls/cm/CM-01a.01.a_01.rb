control 'CM-01a.01(a)[01]' do
  impact 0.5
  title "the #{input('cm_01_odp_03')} of the configuration management policy addresses purpose;"
  desc <<~DESC
    a. Develop, document, and disseminate to #{input('cm_1_prm_1')}:
      1. #{input('cm_01_odp_03')} configuration management policy that:
        (a) Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
        (b) Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and
      2. Procedures to facilitate the implementation of the configuration management policy and the associated configuration management controls;
    b. Designate an #{input('cm_01_odp_04')} to manage the development, documentation, and dissemination of the configuration management policy and procedures; and
    c. Review and update the current configuration management:
      1. Policy #{input('cm_01_odp_05')} and following #{input('cm_01_odp_06')} ; and
      2. Procedures #{input('cm_01_odp_07')} and following #{input('cm_01_odp_08')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the #{input('cm_01_odp_03')} of the configuration management policy addresses purpose;

    Assessment methods and objects:
      EXAMINE: Configuration management policy and procedures; security and privacy program policies and procedures; assessment or audit findings; documentation of security incidents or breaches; system security plan; privacy plan; risk management strategy; other relevant artifacts, documents, or records
      INTERVIEW: Organizational personnel with configuration management responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Configuration management policy and procedures address the controls in the CM family that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on the development of configuration management policy and procedures. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission- or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies that reflect the complex nature of organizations. Procedures can be established for security and privacy programs, for mission/business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to configuration management policy and procedures include, but are not limited to, assessment or audit findings, security incidents or breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.
  GUIDANCE
  tag nist: ['CM-1']
  tag control: 'CM-1'
  tag objective: 'CM-01a.01(a)[01]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_cm_1: true
  tag odp: %w{cm_01_odp_03 cm_01_odp_04 cm_01_odp_05 cm_01_odp_06 cm_01_odp_07 cm_01_odp_08 cm_1_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective CM-01a.01(a)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
