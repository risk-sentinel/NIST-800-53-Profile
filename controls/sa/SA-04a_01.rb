control 'SA-04a.[01]' do
  impact 0.5
  title "security functional requirements, descriptions, and criteria are included explicitly or by reference using #{input('sa_04_odp_01')} in the acquisition contract for the system, system component, or system service;"
  desc <<~DESC
    Include the following requirements, descriptions, and criteria, explicitly or by reference, using #{input('sa_04_odp_01')} in the acquisition contract for the system, system component, or system service:
      a. Security and privacy functional requirements;
      b. Strength of mechanism requirements;
      c. Security and privacy assurance requirements;
      d. Controls needed to satisfy the security and privacy requirements.
      e. Security and privacy documentation requirements;
      f. Requirements for protecting security and privacy documentation;
      g. Description of the system development environment and environment in which the system is intended to operate;
      h. Allocation of responsibility or identification of parties responsible for information security, privacy, and supply chain risk management; and
      i. Acceptance criteria.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      security functional requirements, descriptions, and criteria are included explicitly or by reference using #{input('sa_04_odp_01')} in the acquisition contract for the system, system component, or system service;

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing the integration of information security and privacy and supply chain risk management into the acquisition process; configuration management plan; acquisition contracts for the system, system component, or system service; system design documentation; system security plan; supply chain risk management plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for determining system security and privacy functional, strength, and assurance requirements; organizational processes for developing acquisition contracts; mechanisms supporting and/or implementing acquisitions and the inclusion of security and privacy requirements in contracts
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security and privacy functional requirements are typically derived from the high-level security and privacy requirements described in [SA-2](#sa-2) . The derived requirements include security and privacy capabilities, functions, and mechanisms. Strength requirements associated with such capabilities, functions, and mechanisms include degree of correctness, completeness, resistance to tampering or bypass, and resistance to direct attack. Assurance requirements include development processes, procedures, and methodologies as well as the evidence from development and assessment activities that provide grounds for confidence that the required functionality is implemented and possesses the required strength of mechanism. [SP 800-160-1](#e3cc0520-a366-4fc9-abc2-5272db7e3564) describes the process of requirements engineering as part of the system development life cycle.

    Controls can be viewed as descriptions of the safeguards and protection capabilities appropriate for achieving the particular security and privacy objectives of the organization and for reflecting the security and privacy requirements of stakeholders. Controls are selected and implemented in order to satisfy system requirements and include developer and organizational responsibilities. Controls can include technical, administrative, and physical aspects. In some cases, the selection and implementation of a control may necessitate additional specification by the organization in the form of derived requirements or instantiated control parameter values. The derived requirements and control parameter values may be necessary to provide the appropriate level of implementation detail for controls within the system development life cycle.

    Security and privacy documentation requirements address all stages of the system development life cycle. Documentation provides user and administrator guidance for the implementation and operation of controls. The level of detail required in such documentation is based on the security categorization or classification level of the system and the degree to which organizations depend on the capabilities, functions, or mechanisms to meet risk response expectations. Requirements can include mandated configuration settings that specify allowed functions, ports, protocols, and services. Acceptance criteria for systems, system components, and system services are defined in the same manner as the criteria for any organizational acquisition or procurement.

    Organizations can determine other requirements that support security and operations, to include responsibilities for the organization and developer, and notification and timing requirements for support, maintenance and updates.
  GUIDANCE
  tag nist: ['SA-4']
  tag control: 'SA-4'
  tag objective: 'SA-04a.[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_sa_4: true
  tag odp: %w{sa_04_odp_01}

  describe 'NIST SP 800-53A Rev 5 objective SA-04a.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
