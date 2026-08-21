control 'PM-04a.01[02]' do
  impact 0.5
  title "a process to ensure that plans of action and milestones for the information security program and associated organizational systems are maintained;"
  desc <<~DESC
    a. Implement a process to ensure that plans of action and milestones for the information security, privacy, and supply chain risk management programs and associated organizational systems:
      1. Are developed and maintained;
      2. Document the remedial information security, privacy, and supply chain risk management actions to adequately respond to risk to organizational operations and assets, individuals, other organizations, and the Nation; and
      3. Are reported in accordance with established reporting requirements.
    b. Review plans of action and milestones for consistency with the organizational risk management strategy and organization-wide priorities for risk response actions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a process to ensure that plans of action and milestones for the information security program and associated organizational systems are maintained;

    Assessment methods and objects:
      EXAMINE: Information security program plan; plans of action and milestones; procedures addressing plans of action and milestones development and maintenance; procedures addressing plans of action and milestones reporting; procedures for reviewing plans of action and milestones for consistency with risk management strategy and risk response priorities; results of risk assessments associated with plans of action and milestones; OMB FISMA reporting requirements; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for developing, maintaining, reviewing, and reporting plans of action and milestones; organizational personnel with information security responsibilities
      TEST: Organizational processes for plan of action and milestones development, review, maintenance, and reporting; mechanisms supporting plans of action and milestones
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The plan of action and milestones is a key organizational document and is subject to reporting requirements established by the Office of Management and Budget. Organizations develop plans of action and milestones with an organization-wide perspective, prioritizing risk response actions and ensuring consistency with the goals and objectives of the organization. Plan of action and milestones updates are based on findings from control assessments and continuous monitoring activities. There can be multiple plans of action and milestones corresponding to the information system level, mission/business process level, and organizational/governance level. While plans of action and milestones are required for federal organizations, other types of organizations can help reduce risk by documenting and tracking planned remediations. Specific guidance on plans of action and milestones at the system level is provided in [CA-5](#ca-5).
  GUIDANCE
  tag nist: ['PM-4']
  tag control: 'PM-4'
  tag objective: 'PM-04a.01[02]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_4: true

  describe 'NIST SP 800-53A Rev 5 objective PM-04a.01[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
