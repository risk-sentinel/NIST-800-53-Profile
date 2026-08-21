control 'PM-06[05]' do
  impact 0.5
  title "privacy measures of performance are monitored;"
  desc <<~DESC
    Develop, monitor, and report on the results of information security and privacy measures of performance.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      privacy measures of performance are monitored;

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; information security measures of performance; privacy measures of performance; procedures addressing the development, monitoring, and reporting of information security and privacy measures of performance; risk management strategy; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for developing, monitoring, and reporting information security and privacy measures of performance; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for developing, monitoring, and reporting information security and privacy measures of performance; mechanisms supporting the development, monitoring, and reporting of information security and privacy measures of performance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Measures of performance are outcome-based metrics used by an organization to measure the effectiveness or efficiency of the information security and privacy programs and the controls employed in support of the program. To facilitate security and privacy risk management, organizations consider aligning measures of performance with the organizational risk tolerance as defined in the risk management strategy.
  GUIDANCE
  tag nist: ['PM-6']
  tag control: 'PM-6'
  tag objective: 'PM-06[05]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_6: true

  describe 'NIST SP 800-53A Rev 5 objective PM-06[05]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
