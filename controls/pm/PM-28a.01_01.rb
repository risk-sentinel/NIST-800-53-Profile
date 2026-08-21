control 'PM-28a.01[01]' do
  impact 0.5
  title "assumptions affecting risk assessments are identified and documented;"
  desc <<~DESC
    a. Identify and document:
      1. Assumptions affecting risk assessments, risk responses, and risk monitoring;
      2. Constraints affecting risk assessments, risk responses, and risk monitoring;
      3. Priorities and trade-offs considered by the organization for managing risk; and
      4. Organizational risk tolerance;
    b. Distribute the results of risk framing activities to #{input('pm_28_odp_01')} ; and
    c. Review and update risk framing considerations #{input('pm_28_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      assumptions affecting risk assessments are identified and documented;

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; supply chain risk management strategy; documentation of risk framing activities; policies and procedures for risk framing activities; risk management strategy
      INTERVIEW: Organizational personnel (including mission, business, and system owners or stewards; authorizing officials; senior agency information security officer; senior agency official for privacy; and senior accountable official for risk management)
      TEST: Organizational procedures and practices for authorizing, conducting, managing, and reviewing personally identifiable information processing; organizational processes for risk framing; mechanisms supporting the development, review, update, and approval of risk framing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Risk framing is most effective when conducted at the organization level and in consultation with stakeholders throughout the organization including mission, business, and system owners. The assumptions, constraints, risk tolerance, priorities, and trade-offs identified as part of the risk framing process inform the risk management strategy, which in turn informs the conduct of risk assessment, risk response, and risk monitoring activities. Risk framing results are shared with organizational personnel, including mission and business owners, information owners or stewards, system owners, authorizing officials, senior agency information security officer, senior agency official for privacy, and senior accountable official for risk management.
  GUIDANCE
  tag nist: ['PM-28']
  tag control: 'PM-28'
  tag objective: 'PM-28a.01[01]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_28: true
  tag odp: %w{pm_28_odp_01 pm_28_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PM-28a.01[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
