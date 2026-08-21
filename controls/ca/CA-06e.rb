control 'CA-06e.' do
  impact 0.5
  title "the authorizations are updated #{input('ca_06_odp')}."
  desc <<~DESC
    a. Assign a senior official as the authorizing official for the system;
    b. Assign a senior official as the authorizing official for common controls available for inheritance by organizational systems;
    c. Ensure that the authorizing official for the system, before commencing operations:
      1. Accepts the use of common controls inherited by the system; and
      2. Authorizes the system to operate;
    d. Ensure that the authorizing official for common controls authorizes the use of those controls for inheritance by organizational systems;
    e. Update the authorizations #{input('ca_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the authorizations are updated #{input('ca_06_odp')}.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; procedures addressing authorization; system security plan, privacy plan, assessment report, plan of action and milestones; authorization statement; other relevant documents or records
      INTERVIEW: Organizational personnel with authorization responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms that facilitate authorizations and updates
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Authorizations are official management decisions by senior officials to authorize operation of systems, authorize the use of common controls for inheritance by organizational systems, and explicitly accept the risk to organizational operations and assets, individuals, other organizations, and the Nation based on the implementation of agreed-upon controls. Authorizing officials provide budgetary oversight for organizational systems and common controls or assume responsibility for the mission and business functions supported by those systems or common controls. The authorization process is a federal responsibility, and therefore, authorizing officials must be federal employees. Authorizing officials are both responsible and accountable for security and privacy risks associated with the operation and use of organizational systems. Nonfederal organizations may have similar processes to authorize systems and senior officials that assume the authorization role and associated responsibilities.

    Authorizing officials issue ongoing authorizations of systems based on evidence produced from implemented continuous monitoring programs. Robust continuous monitoring programs reduce the need for separate reauthorization processes. Through the employment of comprehensive continuous monitoring processes, the information contained in authorization packages (i.e., security and privacy plans, assessment reports, and plans of action and milestones) is updated on an ongoing basis. This provides authorizing officials, common control providers, and system owners with an up-to-date status of the security and privacy posture of their systems, controls, and operating environments. To reduce the cost of reauthorization, authorizing officials can leverage the results of continuous monitoring processes to the maximum extent possible as the basis for rendering reauthorization decisions.
  GUIDANCE
  tag nist: ['CA-6']
  tag control: 'CA-6'
  tag objective: 'CA-06e.'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_ca_6: true
  tag odp: %w{ca_06_odp}

  describe 'NIST SP 800-53A Rev 5 objective CA-06e.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
