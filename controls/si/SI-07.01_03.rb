control 'SI-07(01)[03]' do
  impact 0.5
  title "an integrity check of #{input('si_07_01_odp_09')} is performed #{input('si_07_01_odp_10')}."
  desc <<~DESC
    Perform an integrity check of #{input('si_7_1_prm_1')} #{input('si_7_1_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an integrity check of #{input('si_07_01_odp_09')} is performed #{input('si_07_01_odp_10')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software, firmware, and information integrity testing; system design documentation; system configuration settings and associated documentation; integrity verification tools and associated documentation; records of integrity scans; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Software, firmware, and information integrity verification tools
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security-relevant events include the identification of new threats to which organizational systems are susceptible and the installation of new hardware, software, or firmware. Transitional states include system startup, restart, shutdown, and abort.
  GUIDANCE
  tag nist: ['SI-7 (1)']
  tag control: 'SI-7 (1)'
  tag objective: 'SI-07(01)[03]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_si_7_1: true
  tag odp: %w{si_07_01_odp_09 si_07_01_odp_10 si_7_1_prm_1 si_7_1_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective SI-07(01)[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
