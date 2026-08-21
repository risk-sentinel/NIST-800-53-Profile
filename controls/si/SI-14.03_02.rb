control 'SI-14(03)[02]' do
  impact 0.5
  title "connections to the system are terminated after #{input('si_14_03_odp')}."
  desc <<~DESC
    Establish connections to the system on demand and terminate connections after #{input('si_14_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      connections to the system are terminated after #{input('si_14_03_odp')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing non-persistence for system components; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for limiting persistent connections; organizational personnel with information security responsibilities
      TEST: Organizational processes for limiting persistent connections; automated mechanisms supporting and/or implementing non-persistent connectivity
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Persistent connections to systems can provide advanced adversaries with paths to move laterally through systems and potentially position themselves closer to high value assets. Limiting the availability of such connections impedes the adversary’s ability to move freely through organizational systems.
  GUIDANCE
  tag nist: ['SI-14 (3)']
  tag control: 'SI-14 (3)'
  tag objective: 'SI-14(03)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_14_3: true
  tag odp: %w{si_14_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-14(03)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
