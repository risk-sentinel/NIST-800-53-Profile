control 'SI-07(17)' do
  impact 0.5
  title "#{input('si_07_17_odp')} are implemented for application self-protection at runtime."
  desc <<~DESC
    Implement #{input('si_07_17_odp')} for application self-protection at runtime.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_07_17_odp')} are implemented for application self-protection at runtime.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software and information integrity; system design documentation; system configuration settings and associated documentation; list of known vulnerabilities addressed by runtime instrumentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Software, firmware, and information integrity verification tools; mechanisms supporting and/or implementing runtime application self-protection
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Runtime application self-protection employs runtime instrumentation to detect and block the exploitation of software vulnerabilities by taking advantage of information from the software in execution. Runtime exploit prevention differs from traditional perimeter-based protections such as guards and firewalls which can only detect and block attacks by using network information without contextual awareness. Runtime application self-protection technology can reduce the susceptibility of software to attacks by monitoring its inputs and blocking those inputs that could allow attacks. It can also help protect the runtime environment from unwanted changes and tampering. When a threat is detected, runtime application self-protection technology can prevent exploitation and take other actions (e.g., sending a warning message to the user, terminating the user's session, terminating the application, or sending an alert to organizational personnel). Runtime application self-protection solutions can be deployed in either a monitor or protection mode.
  GUIDANCE
  tag nist: ['SI-7 (17)']
  tag control: 'SI-7 (17)'
  tag objective: 'SI-07(17)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_7_17: true
  tag odp: %w{si_07_17_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-07(17)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
