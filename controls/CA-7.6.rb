control 'CA-7 (6)' do
  impact 0.5
  title 'Automation Support for Monitoring'
  desc <<~DESC
    Ensure the accuracy, currency, and availability of monitoring results for the system using #{input('ca_07_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CA-07(06) #{input('ca_07_06_odp')} are used to ensure the accuracy, currency, and availability of monitoring results for the system.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; organizational continuous monitoring strategy; system-level continuous monitoring strategy; procedures addressing continuous monitoring of system controls; assessment report; plan of action and milestones; system monitoring records; impact analyses; status reports; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with continuous monitoring responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms supporting automated monitoring
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Using automated tools for monitoring helps to maintain the accuracy, currency, and availability of monitoring information which in turns helps to increase the level of ongoing awareness of the system security and privacy posture in support of organizational risk management decisions.
  GUIDANCE
  tag nist: ['CA-7 (6)']
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{}
  tag odp: %w{ca_07_06_odp}

  describe 'NIST SP 800-53 Rev 5 control CA-7 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
