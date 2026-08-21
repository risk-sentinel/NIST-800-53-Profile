control 'PL-08a.03[01]' do
  impact 0.5
  title "a security architecture for the system describes how the architecture is integrated into and supports the enterprise architecture;"
  desc <<~DESC
    a. Develop security and privacy architectures for the system that:
      1. Describe the requirements and approach to be taken for protecting the confidentiality, integrity, and availability of organizational information;
      2. Describe the requirements and approach to be taken for processing personally identifiable information to minimize privacy risk to individuals;
      3. Describe how the architectures are integrated into and support the enterprise architecture; and
      4. Describe any assumptions about, and dependencies on, external systems and services;
    b. Review and update the architectures #{input('pl_08_odp')} to reflect changes in the enterprise architecture; and
    c. Reflect planned architecture changes in security and privacy plans, Concept of Operations (CONOPS), criticality analysis, organizational procedures, and procurements and acquisitions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a security architecture for the system describes how the architecture is integrated into and supports the enterprise architecture;

    Assessment methods and objects:
      EXAMINE: Security and privacy planning policy; procedures addressing information security and privacy architecture development; procedures addressing information security and privacy architecture reviews and updates; enterprise architecture documentation; information security and privacy architecture documentation; system security plan; privacy plan; security and privacy CONOPS for the system; records of information security and privacy architecture reviews and updates; other relevant documents or records
      INTERVIEW: Organizational personnel with security and privacy planning and plan implementation responsibilities; organizational personnel with information security and privacy architecture development responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for developing, reviewing, and updating the information security and privacy architecture; mechanisms supporting and/or implementing the development, review, and update of the information security and privacy architecture
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The security and privacy architectures at the system level are consistent with the organization-wide security and privacy architectures described in [PM-7](#pm-7) , which are integral to and developed as part of the enterprise architecture. The architectures include an architectural description, the allocation of security and privacy functionality (including controls), security- and privacy-related information for external interfaces, information being exchanged across the interfaces, and the protection mechanisms associated with each interface. The architectures can also include other information, such as user roles and the access privileges assigned to each role; security and privacy requirements; types of information processed, stored, and transmitted by the system; supply chain risk management requirements; restoration priorities of information and system services; and other protection needs.

    [SP 800-160-1](#e3cc0520-a366-4fc9-abc2-5272db7e3564) provides guidance on the use of security architectures as part of the system development life cycle process. [OMB M-19-03](#c5e11048-1d38-4af3-b00b-0d88dc26860c) requires the use of the systems security engineering concepts described in [SP 800-160-1](#e3cc0520-a366-4fc9-abc2-5272db7e3564) for high value assets. Security and privacy architectures are reviewed and updated throughout the system development life cycle, from analysis of alternatives through review of the proposed architecture in the RFP responses to the design reviews before and during implementation (e.g., during preliminary design reviews and critical design reviews).

    In today’s modern computing architectures, it is becoming less common for organizations to control all information resources. There may be key dependencies on external information services and service providers. Describing such dependencies in the security and privacy architectures is necessary for developing a comprehensive mission and business protection strategy. Establishing, developing, documenting, and maintaining under configuration control a baseline configuration for organizational systems is critical to implementing and maintaining effective architectures. The development of the architectures is coordinated with the senior agency information security officer and the senior agency official for privacy to ensure that the controls needed to support security and privacy requirements are identified and effectively implemented. In many circumstances, there may be no distinction between the security and privacy architecture for a system. In other circumstances, security objectives may be adequately satisfied, but privacy objectives may only be partially satisfied by the security requirements. In these cases, consideration of the privacy requirements needed to achieve satisfaction will result in a distinct privacy architecture. The documentation, however, may simply reflect the combined architectures.

    [PL-8](#pl-8) is primarily directed at organizations to ensure that architectures are developed for the system and, moreover, that the architectures are integrated with or tightly coupled to the enterprise architecture. In contrast, [SA-17](#sa-17) is primarily directed at the external information technology product and system developers and integrators. [SA-17](#sa-17) , which is complementary to [PL-8](#pl-8) , is selected when organizations outsource the development of systems or components to external entities and when there is a need to demonstrate consistency with the organization’s enterprise architecture and security and privacy architectures.
  GUIDANCE
  tag nist: ['PL-8']
  tag control: 'PL-8'
  tag objective: 'PL-08a.03[01]'
  tag rev: 'Rev_5'
  tag family: 'Planning'
  tag baseline: %w{MODERATE HIGH PRIVACY}
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_pl_8: true
  tag odp: %w{pl_08_odp}

  describe 'NIST SP 800-53A Rev 5 objective PL-08a.03[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
