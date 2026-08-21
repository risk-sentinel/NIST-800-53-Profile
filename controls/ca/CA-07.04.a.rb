control 'CA-07(04)(a)' do
  impact 0.5
  title "effectiveness monitoring is included in risk monitoring;"
  desc <<~DESC
    Ensure risk monitoring is an integral part of the continuous monitoring strategy that includes the following:
      (a) Effectiveness monitoring;
      (b) Compliance monitoring; and
      (c) Change monitoring.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      effectiveness monitoring is included in risk monitoring;

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; organizational continuous monitoring strategy; system-level continuous monitoring strategy; procedures addressing continuous monitoring of system controls; assessment report; plan of action and milestones; system monitoring records; impact analyses; status reports; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with continuous monitoring responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms supporting risk monitoring
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Risk monitoring is informed by the established organizational risk tolerance. Effectiveness monitoring determines the ongoing effectiveness of the implemented risk response measures. Compliance monitoring verifies that required risk response measures are implemented. It also verifies that security and privacy requirements are satisfied. Change monitoring identifies changes to organizational systems and environments of operation that may affect security and privacy risk.
  GUIDANCE
  tag nist: ['CA-7 (4)']
  tag control: 'CA-7 (4)'
  tag objective: 'CA-07(04)(a)'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_ca_7_4: true

  describe 'NIST SP 800-53A Rev 5 objective CA-07(04)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
