control 'SI-03(10)(b)[02]' do
  impact 0.5
  title "the results from malicious code analysis are incorporated into organizational flaw remediation processes."
  desc <<~DESC
    (a) Employ the following tools and techniques to analyze the characteristics and behavior of malicious code: #{input('si_03_10_odp')} ; and
    (b) Incorporate the results from malicious code analysis into organizational incident response and flaw remediation processes.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the results from malicious code analysis are incorporated into organizational flaw remediation processes.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing malicious code protection; procedures addressing incident response; procedures addressing flaw remediation; system design documentation; malicious code protection mechanisms, tools, and techniques; system configuration settings and associated documentation; results from malicious code analyses; records of flaw remediation events resulting from malicious code analyses; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for malicious code protection; organizational personnel responsible for flaw remediation; organizational personnel responsible for incident response/management
      TEST: Organizational process for incident response; organizational process for flaw remediation; mechanisms supporting and/or implementing malicious code protection capabilities; tools and techniques for the analysis of malicious code characteristics and behavior
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The use of malicious code analysis tools provides organizations with a more in-depth understanding of adversary tradecraft (i.e., tactics, techniques, and procedures) and the functionality and purpose of specific instances of malicious code. Understanding the characteristics of malicious code facilitates effective organizational responses to current and future threats. Organizations can conduct malicious code analyses by employing reverse engineering techniques or by monitoring the behavior of executing code.
  GUIDANCE
  tag nist: ['SI-3 (10)']
  tag control: 'SI-3 (10)'
  tag objective: 'SI-03(10)(b)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_3_10: true
  tag odp: %w{si_03_10_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-03(10)(b)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
