control 'PT-01a.01(a)[04]' do
  impact 0.5
  title "the #{input('pt_01_odp_03')} personally identifiable information processing and transparency policy addresses responsibilities;"
  desc <<~DESC
    a. Develop, document, and disseminate to #{input('pt_1_prm_1')}:
      1. #{input('pt_01_odp_03')} personally identifiable information processing and transparency policy that:
        (a) Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
        (b) Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and
      2. Procedures to facilitate the implementation of the personally identifiable information processing and transparency policy and the associated personally identifiable information processing and transparency controls;
    b. Designate an #{input('pt_01_odp_04')} to manage the development, documentation, and dissemination of the personally identifiable information processing and transparency policy and procedures; and
    c. Review and update the current personally identifiable information processing and transparency:
      1. Policy #{input('pt_01_odp_05')} and following #{input('pt_01_odp_06')} ; and
      2. Procedures #{input('pt_01_odp_07')} and following #{input('pt_01_odp_08')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the #{input('pt_01_odp_03')} personally identifiable information processing and transparency policy addresses responsibilities;

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; privacy plan; privacy program plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Personally identifiable information processing and transparency policy and procedures address the controls in the PT family that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on the development of personally identifiable information processing and transparency policy and procedures. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission- or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies that reflect the complex nature of organizations. Procedures can be established for security and privacy programs, for mission or business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to personally identifiable information processing and transparency policy and procedures include assessment or audit findings, breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.
  GUIDANCE
  tag nist: ['PT-1']
  tag control: 'PT-1'
  tag objective: 'PT-01a.01(a)[04]'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pt_1: true
  tag odp: %w{pt_01_odp_03 pt_01_odp_04 pt_01_odp_05 pt_01_odp_06 pt_01_odp_07 pt_01_odp_08 pt_1_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective PT-01a.01(a)[04]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
