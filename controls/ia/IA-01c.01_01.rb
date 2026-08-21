control 'IA-01c.01[01]' do
  impact 0.5
  title "the current identification and authentication policy is reviewed and updated #{input('ia_01_odp_05')};"
  desc <<~DESC
    a. Develop, document, and disseminate to #{input('ia_1_prm_1')}:
      1. #{input('ia_01_odp_03')} identification and authentication policy that:
        (a) Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
        (b) Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and
      2. Procedures to facilitate the implementation of the identification and authentication policy and the associated identification and authentication controls;
    b. Designate an #{input('ia_01_odp_04')} to manage the development, documentation, and dissemination of the identification and authentication policy and procedures; and
    c. Review and update the current identification and authentication:
      1. Policy #{input('ia_01_odp_05')} and following #{input('ia_01_odp_06')} ; and
      2. Procedures #{input('ia_01_odp_07')} and following #{input('ia_01_odp_08')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the current identification and authentication policy is reviewed and updated #{input('ia_01_odp_05')};

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy and procedures; system security plan; privacy plan; risk management strategy documentation; list of events requiring identification and authentication procedures to be reviewed and updated (e.g., audit findings); other relevant documents or records
      INTERVIEW: Organizational personnel with identification and authentication responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Identification and authentication policy and procedures address the controls in the IA family that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on the development of identification and authentication policy and procedures. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission- or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies that reflect the complex nature of organizations. Procedures can be established for security and privacy programs, for mission or business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to identification and authentication policy and procedures include assessment or audit findings, security incidents or breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.
  GUIDANCE
  tag nist: ['IA-1']
  tag control: 'IA-1'
  tag objective: 'IA-01c.01[01]'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ia_1: true
  tag odp: %w{ia_01_odp_03 ia_01_odp_04 ia_01_odp_05 ia_01_odp_06 ia_01_odp_07 ia_01_odp_08 ia_1_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective IA-01c.01[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
