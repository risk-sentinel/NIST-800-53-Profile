control 'RA-03e.' do
  impact 0.5
  title "risk assessment results are disseminated to #{input('ra_03_odp_04')};"
  desc <<~DESC
    a. Conduct a risk assessment, including:
      1. Identifying threats to and vulnerabilities in the system;
      2. Determining the likelihood and magnitude of harm from unauthorized access, use, disclosure, disruption, modification, or destruction of the system, the information it processes, stores, or transmits, and any related information; and
      3. Determining the likelihood and impact of adverse effects on individuals arising from the processing of personally identifiable information;
    b. Integrate risk assessment results and risk management decisions from the organization and mission or business process perspectives with system-level risk assessments;
    c. Document risk assessment results in #{input('ra_03_odp_01')};
    d. Review risk assessment results #{input('ra_03_odp_03')};
    e. Disseminate risk assessment results to #{input('ra_03_odp_04')} ; and
    f. Update the risk assessment #{input('ra_03_odp_05')} or when there are significant changes to the system, its environment of operation, or other conditions that may impact the security or privacy state of the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      risk assessment results are disseminated to #{input('ra_03_odp_04')};

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; risk assessment procedures; security and privacy planning policy and procedures; procedures addressing organizational assessments of risk; risk assessment; risk assessment results; risk assessment reviews; risk assessment updates; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with risk assessment responsibilities; organizational personnel with security and privacy responsibilities
      TEST: Organizational processes for risk assessment; mechanisms supporting and/or conducting, documenting, reviewing, disseminating, and updating the risk assessment
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Risk assessments consider threats, vulnerabilities, likelihood, and impact to organizational operations and assets, individuals, other organizations, and the Nation. Risk assessments also consider risk from external parties, including contractors who operate systems on behalf of the organization, individuals who access organizational systems, service providers, and outsourcing entities.

    Organizations can conduct risk assessments at all three levels in the risk management hierarchy (i.e., organization level, mission/business process level, or information system level) and at any stage in the system development life cycle. Risk assessments can also be conducted at various steps in the Risk Management Framework, including preparation, categorization, control selection, control implementation, control assessment, authorization, and control monitoring. Risk assessment is an ongoing activity carried out throughout the system development life cycle.

    Risk assessments can also address information related to the system, including system design, the intended use of the system, testing results, and supply chain-related information or artifacts. Risk assessments can play an important role in control selection processes, particularly during the application of tailoring guidance and in the earliest phases of capability determination.
  GUIDANCE
  tag nist: ['RA-3']
  tag control: 'RA-3'
  tag objective: 'RA-03e.'
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_ra_3: true
  tag odp: %w{ra_03_odp_01 ra_03_odp_03 ra_03_odp_04 ra_03_odp_05}

  describe 'NIST SP 800-53A Rev 5 objective RA-03e.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
