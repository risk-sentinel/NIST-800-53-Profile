control 'CA-05b.' do
  impact 0.5
  title "existing plan of action and milestones are updated #{input('ca_05_odp')} based on the findings from control assessments, independent audits or reviews, and continuous monitoring activities."
  desc <<~DESC
    a. Develop a plan of action and milestones for the system to document the planned remediation actions of the organization to correct weaknesses or deficiencies noted during the assessment of the controls and to reduce or eliminate known vulnerabilities in the system; and
    b. Update existing plan of action and milestones #{input('ca_05_odp')} based on the findings from control assessments, independent audits or reviews, and continuous monitoring activities.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      existing plan of action and milestones are updated #{input('ca_05_odp')} based on the findings from control assessments, independent audits or reviews, and continuous monitoring activities.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; procedures addressing plan of action and milestones; control assessment plan; control assessment report; control assessment evidence; plan of action and milestones; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with plan of action and milestones development and implementation responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms for developing, implementing, and maintaining plan of action and milestones
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Plans of action and milestones are useful for any type of organization to track planned remedial actions. Plans of action and milestones are required in authorization packages and subject to federal reporting requirements established by OMB.
  GUIDANCE
  tag nist: ['CA-5']
  tag control: 'CA-5'
  tag objective: 'CA-05b.'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_ca_5: true
  tag odp: %w{ca_05_odp}

  describe 'NIST SP 800-53A Rev 5 objective CA-05b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
