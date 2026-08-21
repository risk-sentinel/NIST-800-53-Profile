control 'SI-08a.[02]' do
  impact 0.5
  title "spam protection mechanisms are employed at system exit points to detect unsolicited messages;"
  desc <<~DESC
    a. Employ spam protection mechanisms at system entry and exit points to detect and act on unsolicited messages; and
    b. Update spam protection mechanisms when new releases are available in accordance with organizational configuration management policy and procedures.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      spam protection mechanisms are employed at system exit points to detect unsolicited messages;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; configuration management policies and procedures (CM-01); procedures addressing spam protection; spam protection mechanisms; records of spam protection updates; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for spam protection; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Organizational processes for implementing spam protection; mechanisms supporting and/or implementing spam protection
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System entry and exit points include firewalls, remote-access servers, electronic mail servers, web servers, proxy servers, workstations, notebook computers, and mobile devices. Spam can be transported by different means, including email, email attachments, and web accesses. Spam protection mechanisms include signature definitions.
  GUIDANCE
  tag nist: ['SI-8']
  tag control: 'SI-8'
  tag objective: 'SI-08a.[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_si_8: true

  describe 'NIST SP 800-53A Rev 5 objective SI-08a.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
