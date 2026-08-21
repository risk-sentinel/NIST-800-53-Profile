control 'SC-07(14)' do
  impact 0.5
  title "#{input('sc_07_14_odp')} are protected against unauthorized physical connections."
  desc <<~DESC
    Protect against unauthorized physical connections at #{input('sc_07_14_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_07_14_odp')} are protected against unauthorized physical connections.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; system architecture; system configuration settings and associated documentation; facility communications and wiring diagram system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms supporting and/or implementing protection against unauthorized physical connections
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Systems that operate at different security categories or classification levels may share common physical and environmental controls, since the systems may share space within the same facilities. In practice, it is possible that these separate systems may share common equipment rooms, wiring closets, and cable distribution paths. Protection against unauthorized physical connections can be achieved by using clearly identified and physically separated cable trays, connection frames, and patch panels for each side of managed interfaces with physical access controls that enforce limited authorized access to these items.
  GUIDANCE
  tag nist: ['SC-7 (14)']
  tag control: 'SC-7 (14)'
  tag objective: 'SC-07(14)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_7_14: true
  tag odp: %w{sc_07_14_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-07(14)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
