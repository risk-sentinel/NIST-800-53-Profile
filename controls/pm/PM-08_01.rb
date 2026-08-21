control 'PM-08[01]' do
  impact 0.5
  title "information security issues are addressed in the development of a critical infrastructure and key resources protection plan;"
  desc <<~DESC
    Address information security and privacy issues in the development, documentation, and updating of a critical infrastructure and key resources protection plan.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      information security issues are addressed in the development of a critical infrastructure and key resources protection plan;

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; critical infrastructure and key resources protection plan; procedures addressing the development, documentation, and updating of the critical infrastructure and key resources protection plan; HSPD 7; National Infrastructure Protection Plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for developing, documenting, and updating the critical infrastructure and key resources protection plan; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for developing, documenting, and updating the critical infrastructure and key resources protection plan; mechanisms supporting the development, documentation, and updating of the critical infrastructure and key resources protection plan
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Protection strategies are based on the prioritization of critical assets and resources. The requirement and guidance for defining critical infrastructure and key resources and for preparing an associated critical infrastructure protection plan are found in applicable laws, executive orders, directives, policies, regulations, standards, and guidelines.
  GUIDANCE
  tag nist: ['PM-8']
  tag control: 'PM-8'
  tag objective: 'PM-08[01]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_8: true

  describe 'NIST SP 800-53A Rev 5 objective PM-08[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
