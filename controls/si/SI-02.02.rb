control 'SI-02(02)' do
  impact 0.5
  title "system components have applicable security-relevant software and firmware updates installed #{input('si_02_02_odp_02')} using #{input('si_02_02_odp_01')}."
  desc <<~DESC
    Determine if system components have applicable security-relevant software and firmware updates installed using #{input('si_02_02_odp_01')} #{input('si_02_02_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system components have applicable security-relevant software and firmware updates installed #{input('si_02_02_odp_02')} using #{input('si_02_02_odp_01')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing flaw remediation; automated mechanisms supporting centralized management of flaw remediation; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for flaw remediation
      TEST: Automated mechanisms used to determine the state of system components with regard to flaw remediation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms can track and determine the status of known flaws for system components.
  GUIDANCE
  tag nist: ['SI-2 (2)']
  tag control: 'SI-2 (2)'
  tag objective: 'SI-02(02)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_si_2_2: true
  tag odp: %w{si_02_02_odp_01 si_02_02_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SI-02(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
