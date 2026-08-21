control 'SI-04(14)[02]' do
  impact 0.5
  title "a wireless intrusion detection system is employed to detect attack attempts on the system;"
  desc <<~DESC
    Employ a wireless intrusion detection system to identify rogue wireless devices and to detect attack attempts and potential compromises or breaches to the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a wireless intrusion detection system is employed to detect attack attempts on the system;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring tools and techniques; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; system protocols; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system; organizational personnel responsible for the intrusion detection system
      TEST: Organizational processes for intrusion detection; mechanisms supporting and/or implementing a wireless intrusion detection capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Wireless signals may radiate beyond organizational facilities. Organizations proactively search for unauthorized wireless connections, including the conduct of thorough scans for unauthorized wireless access points. Wireless scans are not limited to those areas within facilities containing systems but also include areas outside of facilities to verify that unauthorized wireless access points are not connected to organizational systems.
  GUIDANCE
  tag nist: ['SI-4 (14)']
  tag control: 'SI-4 (14)'
  tag objective: 'SI-04(14)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_si_4_14: true

  describe 'NIST SP 800-53A Rev 5 objective SI-04(14)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
