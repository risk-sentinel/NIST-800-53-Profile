control 'SC-48' do
  impact 0.5
  title "#{input('sc_48_odp_01')} are relocated to #{input('sc_48_odp_02')} under #{input('sc_48_odp_03')}."
  desc <<~DESC
    Relocate #{input('sc_48_odp_01')} to #{input('sc_48_odp_02')} under the following conditions or circumstances: #{input('sc_48_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_48_odp_01')} are relocated to #{input('sc_48_odp_02')} under #{input('sc_48_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing sensor and monitoring capability relocation; list of sensors/monitoring capabilities to be relocated; change control records; configuration management records; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system
      TEST: Mechanisms supporting and/or implementing sensor relocation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Adversaries may take various paths and use different approaches as they move laterally through an organization (including its systems) to reach their target or as they attempt to exfiltrate information from the organization. The organization often only has a limited set of monitoring and detection capabilities, and they may be focused on the critical or likely infiltration or exfiltration paths. By using communications paths that the organization typically does not monitor, the adversary can increase its chances of achieving its desired goals. By relocating its sensors or monitoring capabilities to new locations, the organization can impede the adversary’s ability to achieve its goals. The relocation of the sensors or monitoring capabilities might be done based on threat information that the organization has acquired or randomly to confuse the adversary and make its lateral transition through the system or organization more challenging.
  GUIDANCE
  tag nist: ['SC-48']
  tag control: 'SC-48'
  tag objective: 'SC-48'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_48: true
  tag odp: %w{sc_48_odp_01 sc_48_odp_02 sc_48_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SC-48' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
