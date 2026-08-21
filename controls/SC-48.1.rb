control 'SC-48 (1)' do
  impact 0.5
  title 'Dynamic Relocation of Sensors or Monitoring Capabilities'
  desc <<~DESC
    Dynamically relocate #{input('sc_48_01_odp_01')} to #{input('sc_48_01_odp_02')} under the following conditions or circumstances: #{input('sc_48_01_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-48(01) #{input('sc_48_01_odp_01')} are dynamically relocated to #{input('sc_48_01_odp_02')} under #{input('sc_48_01_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing sensor and monitoring capability relocation; list of sensors/monitoring capabilities to be relocated; change control records; configuration management records; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system
      TEST: SELECT FROM: Mechanisms supporting and/or implementing sensor relocation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['SC-48 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_48_01_odp_01 sc_48_01_odp_02 sc_48_01_odp_03}

  describe 'NIST SP 800-53 Rev 5 control SC-48 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
