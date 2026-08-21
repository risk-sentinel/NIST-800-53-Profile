control 'SC-40(02)' do
  impact 0.5
  title "cryptographic mechanisms to reduce the detection potential of wireless links to #{input('sc_40_02_odp')} are implemented."
  desc <<~DESC
    Implement cryptographic mechanisms to reduce the detection potential of wireless links to #{input('sc_40_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      cryptographic mechanisms to reduce the detection potential of wireless links to #{input('sc_40_02_odp')} are implemented.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; access control policy and procedures; procedures addressing wireless link protection; system design documentation; wireless network diagrams; system configuration settings and associated documentation; system architecture; system communications hardware and software; security categorization results; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel authorizing, installing, configuring, and/or maintaining internal and external wireless links
      TEST: Cryptographic mechanisms enforcing protections to reduce the detection of wireless links
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The implementation of cryptographic mechanisms to reduce detection potential is used for covert communications and to protect wireless transmitters from geo-location. It also ensures that the spread spectrum waveforms used to achieve a low probability of detection are not predictable by unauthorized individuals. Mission requirements, projected threats, concept of operations, and applicable laws, executive orders, directives, regulations, policies, and standards determine the levels to which wireless links are undetectable.
  GUIDANCE
  tag nist: ['SC-40 (2)']
  tag control: 'SC-40 (2)'
  tag objective: 'SC-40(02)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_40_2: true
  tag odp: %w{sc_40_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-40(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
