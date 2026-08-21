control 'CA-08(02)' do
  impact 0.5
  title "#{input('ca_08_02_odp')} are employed to simulate attempts by adversaries to compromise organizational systems in accordance with applicable rules of engagement."
  desc <<~DESC
    Employ the following red-team exercises to simulate attempts by adversaries to compromise organizational systems in accordance with applicable rules of engagement: #{input('ca_08_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ca_08_02_odp')} are employed to simulate attempts by adversaries to compromise organizational systems in accordance with applicable rules of engagement.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; procedures addressing penetration testing; procedures addressing red team exercises; assessment plan; results of red team exercises; penetration test report; assessment report; rules of engagement; assessment evidence; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with assessment responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Mechanisms supporting the employment of red team exercises
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Red team exercises extend the objectives of penetration testing by examining the security and privacy posture of organizations and the capability to implement effective cyber defenses. Red team exercises simulate attempts by adversaries to compromise mission and business functions and provide a comprehensive assessment of the security and privacy posture of systems and organizations. Such attempts may include technology-based attacks and social engineering-based attacks. Technology-based attacks include interactions with hardware, software, or firmware components and/or mission and business processes. Social engineering-based attacks include interactions via email, telephone, shoulder surfing, or personal conversations. Red team exercises are most effective when conducted by penetration testing agents and teams with knowledge of and experience with current adversarial tactics, techniques, procedures, and tools. While penetration testing may be primarily laboratory-based testing, organizations can use red team exercises to provide more comprehensive assessments that reflect real-world conditions. The results from red team exercises can be used by organizations to improve security and privacy awareness and training and to assess control effectiveness.
  GUIDANCE
  tag nist: ['CA-8 (2)']
  tag control: 'CA-8 (2)'
  tag objective: 'CA-08(02)'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{}
  tag control_ca_8_2: true
  tag odp: %w{ca_08_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective CA-08(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
