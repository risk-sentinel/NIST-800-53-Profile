control 'SC-08(02)[02]' do
  impact 0.5
  title "information #{input('sc_08_02_odp')} is/are maintained during reception."
  desc <<~DESC
    Maintain the #{input('sc_08_02_odp')} of information during preparation for transmission and during reception.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      information #{input('sc_08_02_odp')} is/are maintained during reception.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing transmission confidentiality and integrity; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Mechanisms supporting and/or implementing transmission confidentiality and/or integrity
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information can be unintentionally or maliciously disclosed or modified during preparation for transmission or during reception, including during aggregation, at protocol transformation points, and during packing and unpacking. Such unauthorized disclosures or modifications compromise the confidentiality or integrity of the information.
  GUIDANCE
  tag nist: ['SC-8 (2)']
  tag control: 'SC-8 (2)'
  tag objective: 'SC-08(02)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_8_2: true
  tag odp: %w{sc_08_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-08(02)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
