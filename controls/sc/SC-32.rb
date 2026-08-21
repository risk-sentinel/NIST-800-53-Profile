control 'SC-32' do
  impact 0.5
  title "the system is partitioned into #{input('sc_32_odp_01')} residing in separate #{input('sc_32_odp_02')} domains or environments based on #{input('sc_32_odp_03')}."
  desc <<~DESC
    Partition the system into #{input('sc_32_odp_01')} residing in separate #{input('sc_32_odp_02')} domains or environments based on #{input('sc_32_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the system is partitioned into #{input('sc_32_odp_01')} residing in separate #{input('sc_32_odp_02')} domains or environments based on #{input('sc_32_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing system partitioning; system design documentation; system configuration settings and associated documentation; system architecture; list of system physical domains (or environments); system facility diagrams; system network diagrams; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; system developers/integrators
      TEST: Mechanisms supporting and/or implementing the physical separation of system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System partitioning is part of a defense-in-depth protection strategy. Organizations determine the degree of physical separation of system components. Physical separation options include physically distinct components in separate racks in the same room, critical components in separate rooms, and geographical separation of critical components. Security categorization can guide the selection of candidates for domain partitioning. Managed interfaces restrict or prohibit network access and information flow among partitioned system components.
  GUIDANCE
  tag nist: ['SC-32']
  tag control: 'SC-32'
  tag objective: 'SC-32'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_32: true
  tag odp: %w{sc_32_odp_01 sc_32_odp_02 sc_32_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SC-32' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
