control 'SI-13 (4)' do
  impact 0.5
  title 'Standby Component Installation and Notification'
  desc <<~DESC
    If system component failures are detected:
      (a) Ensure that the standby components are successfully and transparently installed within #{input('si_13_04_odp_01')} ; and
      (b) #{input('si_13_04_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-13(04)(a) the standby components are successfully and transparently installed within #{input('si_13_04_odp_01')} if system component failures are detected;
      SI-13(04)(b) #{input('si_13_04_odp_02')} are performed if system component failures are detected.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing predictable failure prevention; system design documentation; system configuration settings and associated documentation; list of actions to be taken once system component failure is detected; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for MTTF activities; organizational personnel with information security responsibilities; system/network administrators; organizational personnel with contingency planning responsibilities
      TEST: Organizational processes for managing MTTF; automated mechanisms supporting and/or implementing the transparent installation of standby components; automated mechanisms supporting and/or implementing alarms or system shutdown if component failures are detected
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automatic or manual transfer of components from standby to active mode can occur upon the detection of component failures.
  GUIDANCE
  tag nist: ['SI-13 (4)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_13_04_odp_01 si_13_04_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SI-13 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
