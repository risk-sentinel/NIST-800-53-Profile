control 'SI-07(02)' do
  impact 0.5
  title "automated tools that provide notification to #{input('si_07_02_odp')} upon discovering discrepancies during integrity verification are employed."
  desc <<~DESC
    Employ automated tools that provide notification to #{input('si_07_02_odp')} upon discovering discrepancies during integrity verification.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      automated tools that provide notification to #{input('si_07_02_odp')} upon discovering discrepancies during integrity verification are employed.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software, firmware, and information integrity; personally identifiable information processing policy; system design documentation; system configuration settings and associated documentation; integrity verification tools and associated documentation; records of integrity scans; automated tools supporting alerts and notifications for integrity discrepancies; notifications provided upon discovering discrepancies during integrity verifications; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security and privacy responsibilities; system administrators; software developers
      TEST: Software, firmware, and information integrity verification tools; mechanisms providing integrity discrepancy notifications
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The employment of automated tools to report system and information integrity violations and to notify organizational personnel in a timely matter is essential to effective risk response. Personnel with an interest in system and information integrity violations include mission and business owners, system owners, senior agency information security official, senior agency official for privacy, system administrators, software developers, systems integrators, information security officers, and privacy officers.
  GUIDANCE
  tag nist: ['SI-7 (2)']
  tag control: 'SI-7 (2)'
  tag objective: 'SI-07(02)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_si_7_2: true
  tag odp: %w{si_07_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-07(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
