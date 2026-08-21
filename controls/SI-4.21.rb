control 'SI-4 (21)' do
  impact 0.5
  title 'Probationary Periods'
  desc <<~DESC
    Implement the following additional monitoring of individuals during #{input('si_04_21_odp_02')}: #{input('si_04_21_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-04(21) #{input('si_04_21_odp_01')} of individuals is implemented during #{input('si_04_21_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; system monitoring logs or records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system
      TEST: Organizational processes for system monitoring; mechanisms supporting and/or implementing a system monitoring capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    During probationary periods, employees do not have permanent employment status within organizations. Without such status or access to information that is resident on the system, additional monitoring can help identify any potentially malicious activity or inappropriate behavior.
  GUIDANCE
  tag nist: ['SI-4 (21)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_04_21_odp_01 si_04_21_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SI-4 (21)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
