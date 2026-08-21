control 'PM-10a.[02]' do
  impact 0.5
  title "the privacy state of organizational systems and the environments in which those systems operate are managed through authorization processes;"
  desc <<~DESC
    a. Manage the security and privacy state of organizational systems and the environments in which those systems operate through authorization processes;
    b. Designate individuals to fulfill specific roles and responsibilities within the organizational risk management process; and
    c. Integrate the authorization processes into an organization-wide risk management program.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the privacy state of organizational systems and the environments in which those systems operate are managed through authorization processes;

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; procedures addressing management (i.e., documentation, tracking, and reporting) of the authorization process; assessment, authorization, and monitoring policy; assessment, authorization, and monitoring procedures; system authorization documentation; lists or other documentation about authorization process roles and responsibilities; risk assessment results relevant to the authorization process and the organization-wide risk management program; organizational risk management strategy; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for management of the authorization process; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for authorization; mechanisms supporting the authorization process
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Authorization processes for organizational systems and environments of operation require the implementation of an organization-wide risk management process and associated security and privacy standards and guidelines. Specific roles for risk management processes include a risk executive (function) and designated authorizing officials for each organizational system and common control provider. The authorization processes for the organization are integrated with continuous monitoring processes to facilitate ongoing understanding and acceptance of security and privacy risks to organizational operations, organizational assets, individuals, other organizations, and the Nation.
  GUIDANCE
  tag nist: ['PM-10']
  tag control: 'PM-10'
  tag objective: 'PM-10a.[02]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_10: true

  describe 'NIST SP 800-53A Rev 5 objective PM-10a.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
