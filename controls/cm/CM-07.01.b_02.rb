control 'CM-07(01)(b)[02]' do
  impact 0.5
  title "#{input('cm_07_01_odp_03')} deemed to be unnecessary and/or non-secure are disabled or removed;"
  desc <<~DESC
    (a) Review the system #{input('cm_07_01_odp_01')} to identify unnecessary and/or nonsecure functions, ports, protocols, software, and services; and
    (b) Disable or remove #{input('cm_7_1_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('cm_07_01_odp_03')} deemed to be unnecessary and/or non-secure are disabled or removed;

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing least functionality in the system; configuration management plan; system design documentation; system configuration settings and associated documentation; common secure configuration checklists; documented reviews of functions, ports, protocols, and/or services; change control records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for reviewing functions, ports, protocols, and services on the system; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Organizational processes for reviewing or disabling functions, ports, protocols, and services on the system; mechanisms implementing review and disabling of functions, ports, protocols, and/or services
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations review functions, ports, protocols, and services provided by systems or system components to determine the functions and services that are candidates for elimination. Such reviews are especially important during transition periods from older technologies to newer technologies (e.g., transition from IPv4 to IPv6). These technology transitions may require implementing the older and newer technologies simultaneously during the transition period and returning to minimum essential functions, ports, protocols, and services at the earliest opportunity. Organizations can either decide the relative security of the function, port, protocol, and/or service or base the security decision on the assessment of other entities. Unsecure protocols include Bluetooth, FTP, and peer-to-peer networking.
  GUIDANCE
  tag nist: ['CM-7 (1)']
  tag control: 'CM-7 (1)'
  tag objective: 'CM-07(01)(b)[02]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_7_1: true
  tag odp: %w{cm_07_01_odp_01 cm_07_01_odp_03 cm_7_1_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective CM-07(01)(b)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
