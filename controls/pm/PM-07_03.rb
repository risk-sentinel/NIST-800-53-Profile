control 'PM-07[03]' do
  impact 0.5
  title "an enterprise architecture is developed with consideration for privacy;"
  desc <<~DESC
    Develop and maintain an enterprise architecture with consideration for information security, privacy, and the resulting risk to organizational operations and assets, individuals, other organizations, and the Nation.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an enterprise architecture is developed with consideration for privacy;

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; enterprise architecture documentation; procedures addressing enterprise architecture development; results of risk assessments of enterprise architecture; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for developing enterprise architecture; organizational personnel responsible for risk assessments of enterprise architecture; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for enterprise architecture development; mechanisms supporting the enterprise architecture and its development
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The integration of security and privacy requirements and controls into the enterprise architecture helps to ensure that security and privacy considerations are addressed throughout the system development life cycle and are explicitly related to the organization’s mission and business processes. The process of security and privacy requirements integration also embeds into the enterprise architecture and the organization’s security and privacy architectures consistent with the organizational risk management strategy. For PM-7, security and privacy architectures are developed at a system-of-systems level, representing all organizational systems. For [PL-8](#pl-8) , the security and privacy architectures are developed at a level that represents an individual system. The system-level architectures are consistent with the security and privacy architectures defined for the organization. Security and privacy requirements and control integration are most effectively accomplished through the rigorous application of the Risk Management Framework [SP 800-37](#482e4c99-9dc4-41ad-bba8-0f3f0032c1f8) and supporting security standards and guidelines.
  GUIDANCE
  tag nist: ['PM-7']
  tag control: 'PM-7'
  tag objective: 'PM-07[03]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_7: true

  describe 'NIST SP 800-53A Rev 5 objective PM-07[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
