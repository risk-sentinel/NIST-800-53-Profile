control 'SI-07(10)' do
  impact 0.5
  title "#{input('si_07_10_odp_01')} are implemented to protect the integrity of boot firmware in #{input('si_07_10_odp_02')}."
  desc <<~DESC
    Implement the following mechanisms to protect the integrity of boot firmware in #{input('si_07_10_odp_02')}: #{input('si_07_10_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_07_10_odp_01')} are implemented to protect the integrity of boot firmware in #{input('si_07_10_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software, firmware, and information integrity; system design documentation; system configuration settings and associated documentation; integrity verification tools and associated documentation; records of integrity verification scans; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Software, firmware, and information integrity verification tools; mechanisms supporting and/or implementing protection of the integrity of boot firmware; safeguards implementing protection of the integrity of boot firmware
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Unauthorized modifications to boot firmware may indicate a sophisticated, targeted attack. These types of targeted attacks can result in a permanent denial of service or a persistent malicious code presence. These situations can occur if the firmware is corrupted or if the malicious code is embedded within the firmware. System components can protect the integrity of boot firmware in organizational systems by verifying the integrity and authenticity of all updates to the firmware prior to applying changes to the system component and preventing unauthorized processes from modifying the boot firmware.
  GUIDANCE
  tag nist: ['SI-7 (10)']
  tag control: 'SI-7 (10)'
  tag objective: 'SI-07(10)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_7_10: true
  tag odp: %w{si_07_10_odp_01 si_07_10_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SI-07(10)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
