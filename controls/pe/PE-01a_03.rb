control 'PE-01a.[03]' do
  impact 0.5
  title "physical and environmental protection procedures to facilitate the implementation of the physical and environmental protection policy and associated physical and environmental protection controls are developed and documented;"
  desc <<~DESC
    a. Develop, document, and disseminate to #{input('pe_1_prm_1')}:
      1. #{input('pe_01_odp_03')} physical and environmental protection policy that:
        (a) Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
        (b) Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and
      2. Procedures to facilitate the implementation of the physical and environmental protection policy and the associated physical and environmental protection controls;
    b. Designate an #{input('pe_01_odp_04')} to manage the development, documentation, and dissemination of the physical and environmental protection policy and procedures; and
    c. Review and update the current physical and environmental protection:
      1. Policy #{input('pe_01_odp_05')} and following #{input('pe_01_odp_06')} ; and
      2. Procedures #{input('pe_01_odp_07')} and following #{input('pe_01_odp_08')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      physical and environmental protection procedures to facilitate the implementation of the physical and environmental protection policy and associated physical and environmental protection controls are developed and documented;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy and procedures; system security plan; privacy plan; organizational risk management strategy; other relevant documents or records
      INTERVIEW: Organizational personnel with physical and environmental protection responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Physical and environmental protection policy and procedures address the controls in the PE family that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on the development of physical and environmental protection policy and procedures. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission- or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies that reflect the complex nature of organizations. Procedures can be established for security and privacy programs, for mission or business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to physical and environmental protection policy and procedures include assessment or audit findings, security incidents or breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.
  GUIDANCE
  tag nist: ['PE-1']
  tag control: 'PE-1'
  tag objective: 'PE-01a.[03]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_1: true
  tag odp: %w{pe_01_odp_03 pe_01_odp_04 pe_01_odp_05 pe_01_odp_06 pe_01_odp_07 pe_01_odp_08 pe_1_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective PE-01a.[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
