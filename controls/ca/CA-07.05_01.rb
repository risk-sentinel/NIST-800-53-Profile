control 'CA-07(05)[01]' do
  impact 0.5
  title "#{input('ca_07_05_odp_01')} are employed to validate that policies are established;"
  desc <<~DESC
    Employ the following actions to validate that policies are established and implemented controls are operating in a consistent manner: #{input('ca_7_5_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ca_07_05_odp_01')} are employed to validate that policies are established;

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; organizational continuous monitoring strategy; system-level continuous monitoring strategy; procedures addressing continuous monitoring of system security controls; assessment report; plan of action and milestones; system monitoring records; security impact analyses; status reports; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with continuous monitoring responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms supporting consistency analyses
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security and privacy controls are often added incrementally to a system. As a result, policies for selecting and implementing controls may be inconsistent, and the controls could fail to work together in a consistent or coordinated manner. At a minimum, the lack of consistency and coordination could mean that there are unacceptable security and privacy gaps in the system. At worst, it could mean that some of the controls implemented in one location or by one component are actually impeding the functionality of other controls (e.g., encrypting internal network traffic can impede monitoring). In other situations, failing to consistently monitor all implemented network protocols (e.g., a dual stack of IPv4 and IPv6) may create unintended vulnerabilities in the system that could be exploited by adversaries. It is important to validate—through testing, monitoring, and analysis—that the implemented controls are operating in a consistent, coordinated, non-interfering manner.
  GUIDANCE
  tag nist: ['CA-7 (5)']
  tag control: 'CA-7 (5)'
  tag objective: 'CA-07(05)[01]'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{}
  tag control_ca_7_5: true
  tag odp: %w{ca_07_05_odp_01 ca_7_5_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective CA-07(05)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
