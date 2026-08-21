control 'SI-06b.[01]' do
  impact 0.5
  title "#{input('si_06_odp_01')} are verified #{input('si_06_odp_03')};"
  desc <<~DESC
    a. Verify the correct operation of #{input('si_6_prm_1')};
    b. Perform the verification of the functions specified in SI-6a #{input('si_06_odp_03')};
    c. Alert #{input('si_06_odp_06')} to failed security and privacy verification tests; and
    d. #{input('si_06_odp_07')} when anomalies are discovered.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_06_odp_01')} are verified #{input('si_06_odp_03')};

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing security and privacy function verification; system design documentation; system configuration settings and associated documentation; alerts/notifications of failed security verification tests; list of system transition states requiring security functionality verification; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with security and privacy function verification responsibilities; organizational personnel implementing, operating, and maintaining the system; system/network administrators; organizational personnel with information security and privacy responsibilities; system developer
      TEST: Organizational processes for security and privacy function verification; mechanisms supporting and/or implementing the security and privacy function verification capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Transitional states for systems include system startup, restart, shutdown, and abort. System notifications include hardware indicator lights, electronic alerts to system administrators, and messages to local computer consoles. In contrast to security function verification, privacy function verification ensures that privacy functions operate as expected and are approved by the senior agency official for privacy or that privacy attributes are applied or used as expected.
  GUIDANCE
  tag nist: ['SI-6']
  tag control: 'SI-6'
  tag objective: 'SI-06b.[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_si_6: true
  tag odp: %w{si_06_odp_01 si_06_odp_03 si_06_odp_06 si_06_odp_07 si_6_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective SI-06b.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
