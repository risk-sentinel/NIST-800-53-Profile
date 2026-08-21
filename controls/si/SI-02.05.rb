control 'SI-02(05)' do
  impact 0.5
  title "#{input('si_02_05_odp_01')} are installed automatically to #{input('si_02_05_odp_02')}."
  desc <<~DESC
    Install #{input('si_02_05_odp_01')} automatically to #{input('si_02_05_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_02_05_odp_01')} are installed automatically to #{input('si_02_05_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing flaw remediation; mechanisms supporting flaw remediation and automatic software/firmware updates; system design documentation; system configuration settings and associated documentation; records of recent security-relevant software and firmware updates automatically installed to system components; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for flaw remediation
      TEST: Mechanisms implementing automatic software/firmware updates
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Due to system integrity and availability concerns, organizations consider the methodology used to carry out automatic updates. Organizations balance the need to ensure that the updates are installed as soon as possible with the need to maintain configuration management and control with any mission or operational impacts that automatic updates might impose (i.e., implementing a staggered deployment strategy).
  GUIDANCE
  tag nist: ['SI-2 (5)']
  tag control: 'SI-2 (5)'
  tag objective: 'SI-02(05)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_2_5: true
  tag odp: %w{si_02_05_odp_01 si_02_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SI-02(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
