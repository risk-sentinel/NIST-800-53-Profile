control 'SI-07(16)' do
  impact 0.5
  title "processes are prohibited from executing without supervision for more than #{input('si_07_16_odp')}."
  desc <<~DESC
    Prohibit processes from executing without supervision for more than #{input('si_07_16_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      processes are prohibited from executing without supervision for more than #{input('si_07_16_odp')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software and information integrity; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Software, firmware, and information integrity verification tools; mechanisms supporting and/or implementing time limits on process execution without supervision
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Placing a time limit on process execution without supervision is intended to apply to processes for which typical or normal execution periods can be determined and situations in which organizations exceed such periods. Supervision includes timers on operating systems, automated responses, and manual oversight and response when system process anomalies occur.
  GUIDANCE
  tag nist: ['SI-7 (16)']
  tag control: 'SI-7 (16)'
  tag objective: 'SI-07(16)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_7_16: true
  tag odp: %w{si_07_16_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-07(16)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
