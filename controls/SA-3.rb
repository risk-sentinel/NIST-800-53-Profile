control 'SA-3' do
  impact 0.5
  title 'System Development Life Cycle'
  desc <<~DESC
    a. Acquire, develop, and manage the system using #{input('sa_03_odp')} that incorporates information security and privacy considerations;
    b. Define and document information security and privacy roles and responsibilities throughout the system development life cycle;
    c. Identify individuals having information security and privacy roles and responsibilities; and
    d. Integrate the organizational information security and privacy risk management process into system development life cycle activities.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-03a.
        SA-03a.[01] the system is acquired, developed, and managed using #{input('sa_03_odp')} that incorporates information security considerations;
        SA-03a.[02] the system is acquired, developed, and managed using #{input('sa_03_odp')} that incorporates privacy considerations;
      SA-03b.
        SA-03b.[01] information security roles and responsibilities are defined and documented throughout the system development life cycle;
        SA-03b.[02] privacy roles and responsibilities are defined and documented throughout the system development life cycle;
      SA-03c.
        SA-03c.[01] individuals with information security roles and responsibilities are identified;
        SA-03c.[02] individuals with privacy roles and responsibilities are identified;
      SA-03d.
        SA-03d.[01] organizational information security risk management processes are integrated into system development life cycle activities;
        SA-03d.[02] organizational privacy risk management processes are integrated into system development life cycle activities.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing the integration of information security and privacy and supply chain risk management into the system development life cycle process; system development life cycle documentation; organizational risk management strategy; information security and privacy risk management strategy documentation; system security plan; privacy plan; privacy program plan; enterprise architecture documentation; role-based security and privacy training program documentation; data mapping documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; organizational personnel with system life cycle development responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for defining and documenting the system development life cycle; organizational processes for identifying system development life cycle roles and responsibilities; organizational processes for integrating information security and privacy and supply chain risk management into the system development life cycle; mechanisms supporting and/or implementing the system development life cycle
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A system development life cycle process provides the foundation for the successful development, implementation, and operation of organizational systems. The integration of security and privacy considerations early in the system development life cycle is a foundational principle of systems security engineering and privacy engineering. To apply the required controls within the system development life cycle requires a basic understanding of information security and privacy, threats, vulnerabilities, adverse impacts, and risk to critical mission and business functions. The security engineering principles in [SA-8](#sa-8) help individuals properly design, code, and test systems and system components. Organizations include qualified personnel (e.g., senior agency information security officers, senior agency officials for privacy, security and privacy architects, and security and privacy engineers) in system development life cycle processes to ensure that established security and privacy requirements are incorporated into organizational systems. Role-based security and privacy training programs can ensure that individuals with key security and privacy roles and responsibilities have the experience, skills, and expertise to conduct assigned system development life cycle activities.

    The effective integration of security and privacy requirements into enterprise architecture also helps to ensure that important security and privacy considerations are addressed throughout the system life cycle and that those considerations are directly related to organizational mission and business processes. This process also facilitates the integration of the information security and privacy architectures into the enterprise architecture, consistent with the risk management strategy of the organization. Because the system development life cycle involves multiple organizations, (e.g., external suppliers, developers, integrators, service providers), acquisition and supply chain risk management functions and controls play significant roles in the effective management of the system during the life cycle.
  GUIDANCE
  tag nist: ['SA-3']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag odp: %w{sa_03_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-3' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
