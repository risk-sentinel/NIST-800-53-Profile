control 'AC-17(09)' do
  impact 0.5
  title "the capability to disconnect or disable remote access to the system within #{input('ac_17_09_odp')} is provided."
  desc <<~DESC
    Provide the capability to disconnect or disable remote access to the system within #{input('ac_17_09_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the capability to disconnect or disable remote access to the system within #{input('ac_17_09_odp')} is provided.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing disconnecting or disabling remote access to the system; system design documentation; system configuration settings and associated documentation; security plan, system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing capability to disconnect or disable remote access to system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The speed of system disconnect or disablement varies based on the criticality of missions or business functions and the need to eliminate immediate or future remote access to systems.
  GUIDANCE
  tag nist: ['AC-17 (9)']
  tag control: 'AC-17 (9)'
  tag objective: 'AC-17(09)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_17_9: true
  tag odp: %w{ac_17_09_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-17(09)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
