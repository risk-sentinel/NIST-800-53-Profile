control 'CM-07(03)' do
  impact 0.5
  title "#{input('cm_07_03_odp')} are complied with."
  desc <<~DESC
    Ensure compliance with #{input('cm_07_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('cm_07_03_odp')} are complied with.

    Assessment methods and objects:
      EXAMINE: System security plan; configuration management policy; procedures addressing least functionality in the system; configuration management plan; system configuration settings and associated documentation; system component inventory; audit and compliance reviews; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with security responsibilities; system/network administrators; system developers
      TEST: Organizational processes ensuring compliance with registration requirements for functions, ports, protocols, and/or services; mechanisms implementing compliance with registration requirements for functions, ports, protocols, and/or services
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations use the registration process to manage, track, and provide oversight for systems and implemented functions, ports, protocols, and services.
  GUIDANCE
  tag nist: ['CM-7 (3)']
  tag control: 'CM-7 (3)'
  tag objective: 'CM-07(03)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_7_3: true
  tag odp: %w{cm_07_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective CM-07(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
