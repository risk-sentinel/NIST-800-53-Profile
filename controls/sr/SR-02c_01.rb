control 'SR-02c.[01]' do
  impact 0.5
  title "the supply chain risk management plan is protected from unauthorized disclosure;"
  desc <<~DESC
    a. Develop a plan for managing supply chain risks associated with the research and development, design, manufacturing, acquisition, delivery, integration, operations and maintenance, and disposal of the following systems, system components or system services: #{input('sr_02_odp_01')};
    b. Review and update the supply chain risk management plan #{input('sr_02_odp_02')} or as required, to address threat, organizational or environmental changes; and
    c. Protect the supply chain risk management plan from unauthorized disclosure and modification.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the supply chain risk management plan is protected from unauthorized disclosure;

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy; supply chain risk management procedures; supply chain risk management plan; system and services acquisition policy; system and services acquisition procedures; procedures addressing supply chain protection; procedures for protecting the supply chain risk management plan from unauthorized disclosure and modification; system development life cycle procedures; procedures addressing the integration of information security and privacy requirements into the acquisition process; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; list of supply chain threats; list of safeguards to be taken against supply chain threats; system life cycle documentation; inter-organizational agreements and procedures; system security plan; privacy plan; privacy program plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for defining and documenting the system development life cycle (SDLC); organizational processes for identifying SDLC roles and responsibilities; organizational processes for integrating supply chain risk management into the SDLC; mechanisms supporting and/or implementing the SDLC
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The dependence on products, systems, and services from external providers, as well as the nature of the relationships with those providers, present an increasing level of risk to an organization. Threat actions that may increase security or privacy risks include unauthorized production, the insertion or use of counterfeits, tampering, theft, insertion of malicious software and hardware, and poor manufacturing and development practices in the supply chain. Supply chain risks can be endemic or systemic within a system element or component, a system, an organization, a sector, or the Nation. Managing supply chain risk is a complex, multifaceted undertaking that requires a coordinated effort across an organization to build trust relationships and communicate with internal and external stakeholders. Supply chain risk management (SCRM) activities include identifying and assessing risks, determining appropriate risk response actions, developing SCRM plans to document response actions, and monitoring performance against plans. The SCRM plan (at the system-level) is implementation specific, providing policy implementation, requirements, constraints and implications. It can either be stand-alone, or incorporated into system security and privacy plans. The SCRM plan addresses managing, implementation, and monitoring of SCRM controls and the development/sustainment of systems across the SDLC to support mission and business functions.

    Because supply chains can differ significantly across and within organizations, SCRM plans are tailored to the individual program, organizational, and operational contexts. Tailored SCRM plans provide the basis for determining whether a technology, service, system component, or system is fit for purpose, and as such, the controls need to be tailored accordingly. Tailored SCRM plans help organizations focus their resources on the most critical mission and business functions based on mission and business requirements and their risk environment. Supply chain risk management plans include an expression of the supply chain risk tolerance for the organization, acceptable supply chain risk mitigation strategies or controls, a process for consistently evaluating and monitoring supply chain risk, approaches for implementing and communicating the plan, a description of and justification for supply chain risk mitigation measures taken, and associated roles and responsibilities. Finally, supply chain risk management plans address requirements for developing trustworthy, secure, privacy-protective, and resilient system components and systems, including the application of the security design principles implemented as part of life cycle-based systems security engineering processes (see [SA-8](#sa-8)).
  GUIDANCE
  tag nist: ['SR-2']
  tag control: 'SR-2'
  tag objective: 'SR-02c.[01]'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sr_2: true
  tag odp: %w{sr_02_odp_01 sr_02_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SR-02c.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
