control 'PM-14a.01[04]' do
  impact 0.5
  title "a process is implemented for ensuring that organizational plans for conducting privacy testing, training, and monitoring activities associated with organizational systems are maintained;"
  desc <<~DESC
    a. Implement a process for ensuring that organizational plans for conducting security and privacy testing, training, and monitoring activities associated with organizational systems:
      1. Are developed and maintained; and
      2. Continue to be executed; and
    b. Review testing, training, and monitoring plans for consistency with the organizational risk management strategy and organization-wide priorities for risk response actions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a process is implemented for ensuring that organizational plans for conducting privacy testing, training, and monitoring activities associated with organizational systems are maintained;

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; plans for conducting security and privacy testing, training, and monitoring activities; organizational procedures addressing the development and maintenance of plans for conducting security and privacy testing, training, and monitoring activities; risk management strategy; procedures for the review of plans for conducting security and privacy testing, training, and monitoring activities for consistency with risk management strategy and risk response priorities; results of risk assessments associated with conducting security and privacy testing, training, and monitoring activities; documentation of the timely execution of plans for conducting security and privacy testing, training, and monitoring activities; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for developing and maintaining plans for conducting security and privacy testing, training, and monitoring activities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for the development and maintenance of plans for conducting security and privacy testing, training, and monitoring activities; mechanisms supporting the development and maintenance of plans for conducting security and privacy testing, training, and monitoring activities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A process for organization-wide security and privacy testing, training, and monitoring helps ensure that organizations provide oversight for testing, training, and monitoring activities and that those activities are coordinated. With the growing importance of continuous monitoring programs, the implementation of information security and privacy across the three levels of the risk management hierarchy and the widespread use of common controls, organizations coordinate and consolidate the testing and monitoring activities that are routinely conducted as part of ongoing assessments supporting a variety of controls. Security and privacy training activities, while focused on individual systems and specific roles, require coordination across all organizational elements. Testing, training, and monitoring plans and activities are informed by current threat and vulnerability assessments.
  GUIDANCE
  tag nist: ['PM-14']
  tag control: 'PM-14'
  tag objective: 'PM-14a.01[04]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_14: true

  describe 'NIST SP 800-53A Rev 5 objective PM-14a.01[04]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
