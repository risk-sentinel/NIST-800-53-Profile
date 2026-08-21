control 'CA-07(03)[01]' do
  impact 0.5
  title "trend analysis is employed to determine if control implementations used in the continuous monitoring process need to be modified based on empirical data;"
  desc <<~DESC
    Employ trend analyses to determine if control implementations, the frequency of continuous monitoring activities, and the types of activities used in the continuous monitoring process need to be modified based on empirical data.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      trend analysis is employed to determine if control implementations used in the continuous monitoring process need to be modified based on empirical data;

    Assessment methods and objects:
      EXAMINE: Organizational continuous monitoring strategy; system-level continuous monitoring strategy; assessment, authorization, and monitoring policy; procedures addressing continuous monitoring of system controls; privacy controls; assessment report; plan of action and milestones; system monitoring records; impact analyses; status reports; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with continuous monitoring responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms supporting trend analyses
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Trend analyses include examining recent threat information that addresses the types of threat events that have occurred in the organization or the Federal Government, success rates of certain types of attacks, emerging vulnerabilities in technologies, evolving social engineering techniques, the effectiveness of configuration settings, results from multiple control assessments, and findings from Inspectors General or auditors.
  GUIDANCE
  tag nist: ['CA-7 (3)']
  tag control: 'CA-7 (3)'
  tag objective: 'CA-07(03)[01]'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{}
  tag control_ca_7_3: true

  describe 'NIST SP 800-53A Rev 5 objective CA-07(03)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
