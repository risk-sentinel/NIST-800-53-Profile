control 'SR-01a.01(a)[03]' do
  impact 0.5
  title "#{input('sr_01_odp_03')} supply chain risk management policy addresses roles;"
  desc <<~DESC
    a. Develop, document, and disseminate to #{input('sr_1_prm_1')}:
      1. #{input('sr_01_odp_03')} supply chain risk management policy that:
        (a) Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
        (b) Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and
      2. Procedures to facilitate the implementation of the supply chain risk management policy and the associated supply chain risk management controls;
    b. Designate an #{input('sr_01_odp_04')} to manage the development, documentation, and dissemination of the supply chain risk management policy and procedures; and
    c. Review and update the current supply chain risk management:
      1. Policy #{input('sr_01_odp_05')} and following #{input('sr_01_odp_06')} ; and
      2. Procedures #{input('sr_01_odp_07')} and following #{input('sr_01_odp_08')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sr_01_odp_03')} supply chain risk management policy addresses roles;

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy; supply chain risk management procedures; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with supply chain risk management responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with acquisition responsibilities; organizational personnel with enterprise risk management responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Supply chain risk management policy and procedures address the controls in the SR family as well as supply chain-related controls in other families that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on the development of supply chain risk management policy and procedures. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission- or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies that reflect the complex nature of organizations. Procedures can be established for security and privacy programs, for mission or business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to supply chain risk management policy and procedures include assessment or audit findings, security incidents or breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.
  GUIDANCE
  tag nist: ['SR-1']
  tag control: 'SR-1'
  tag objective: 'SR-01a.01(a)[03]'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sr_1: true
  tag odp: %w{sr_01_odp_03 sr_01_odp_04 sr_01_odp_05 sr_01_odp_06 sr_01_odp_07 sr_01_odp_08 sr_1_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective SR-01a.01(a)[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
