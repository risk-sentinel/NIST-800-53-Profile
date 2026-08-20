control 'AC-20 (4)' do
  impact 0.5
  title 'Network Accessible Storage Devices — Prohibited Use'
  desc <<~DESC
    Prohibit the use of #{input('ac_20_04_odp')} in external systems.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-20(04) the use of #{input('ac_20_04_odp')} is prohibited in external systems.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing use of network-accessible storage devices in external systems; system design documentation; system configuration settings and associated documentation; system connection or processing agreements; list of network-accessible storage devices prohibited from use in external systems; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for prohibiting the use of network-accessible storage devices in external systems; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms prohibiting the use of network-accessible storage devices in external systems
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Network-accessible storage devices in external systems include online storage devices in public, hybrid, or community cloud-based systems.
  GUIDANCE
  tag nist: ['AC-20 (4)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_20_04_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-20 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
