control 'PM-29a.[02]' do
  impact 0.5
  title "a Senior Accountable Official for Risk Management aligns information security and privacy management processes with strategic, operational, and budgetary planning processes;"
  desc <<~DESC
    a. Appoint a Senior Accountable Official for Risk Management to align organizational information security and privacy management processes with strategic, operational, and budgetary planning processes; and
    b. Establish a Risk Executive (function) to view and analyze risk from an organization-wide perspective and ensure management of risk is consistent across the organization.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a Senior Accountable Official for Risk Management aligns information security and privacy management processes with strategic, operational, and budgetary planning processes;

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; risk management strategy; supply chain risk management strategy; documentation of appointment, roles, and responsibilities of a Senior Accountable Official for Risk Management; documentation of actions taken by the Official; documentation of the establishment, policies, and procedures of a Risk Executive (function)
      INTERVIEW: Senior Accountable Official for Risk Management; chief information officer; senior agency information security officer; senior agency official for privacy; organizational personnel with information security and privacy program responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The senior accountable official for risk management leads the risk executive (function) in organization-wide risk management activities.
  GUIDANCE
  tag nist: ['PM-29']
  tag control: 'PM-29'
  tag objective: 'PM-29a.[02]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}
  tag control_pm_29: true

  describe 'NIST SP 800-53A Rev 5 objective PM-29a.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
