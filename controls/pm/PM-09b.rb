control 'PM-09b.' do
  impact 0.5
  title "the risk management strategy is implemented consistently across the organization;"
  desc <<~DESC
    a. Develops a comprehensive strategy to manage:
      1. Security risk to organizational operations and assets, individuals, other organizations, and the Nation associated with the operation and use of organizational systems; and
      2. Privacy risk to individuals resulting from the authorized processing of personally identifiable information;
    b. Implement the risk management strategy consistently across the organization; and
    c. Review and update the risk management strategy #{input('pm_09_odp')} or as required, to address organizational changes.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the risk management strategy is implemented consistently across the organization;

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; risk management strategy; supply chain risk management strategy; procedures addressing the development, implementation, review, and update of the risk management strategy; risk assessment results relevant to the risk management strategy; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for the development, implementation, review, and update of the risk management strategy; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for the development, implementation, review, and update of the risk management strategy; mechanisms supporting the development, implementation, review, and update of the risk management strategy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An organization-wide risk management strategy includes an expression of the security and privacy risk tolerance for the organization, security and privacy risk mitigation strategies, acceptable risk assessment methodologies, a process for evaluating security and privacy risk across the organization with respect to the organization’s risk tolerance, and approaches for monitoring risk over time. The senior accountable official for risk management (agency head or designated official) aligns information security management processes with strategic, operational, and budgetary planning processes. The risk executive function, led by the senior accountable official for risk management, can facilitate consistent application of the risk management strategy organization-wide. The risk management strategy can be informed by security and privacy risk-related inputs from other sources, both internal and external to the organization, to ensure that the strategy is broad-based and comprehensive. The supply chain risk management strategy described in [PM-30](#pm-30) can also provide useful inputs to the organization-wide risk management strategy.
  GUIDANCE
  tag nist: ['PM-9']
  tag control: 'PM-9'
  tag objective: 'PM-09b.'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_9: true
  tag odp: %w{pm_09_odp}

  describe 'NIST SP 800-53A Rev 5 objective PM-09b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
