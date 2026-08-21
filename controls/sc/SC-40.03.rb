control 'SC-40(03)' do
  impact 0.5
  title "cryptographic mechanisms are implemented to identify and reject wireless transmissions that are deliberate attempts to achieve imitative or manipulative communications deception based on signal parameters."
  desc <<~DESC
    Implement cryptographic mechanisms to identify and reject wireless transmissions that are deliberate attempts to achieve imitative or manipulative communications deception based on signal parameters.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      cryptographic mechanisms are implemented to identify and reject wireless transmissions that are deliberate attempts to achieve imitative or manipulative communications deception based on signal parameters.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; access control policy and procedures; procedures addressing system design documentation; wireless network diagrams; system configuration settings and associated documentation; system architecture; system communications hardware and software; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel authorizing, installing, configuring, and/or maintaining internal and external wireless links
      TEST: Cryptographic mechanisms enforcing wireless link protections against imitative or manipulative communications deception
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The implementation of cryptographic mechanisms to identify and reject imitative or manipulative communications ensures that the signal parameters of wireless transmissions are not predictable by unauthorized individuals. Such unpredictability reduces the probability of imitative or manipulative communications deception based on signal parameters alone.
  GUIDANCE
  tag nist: ['SC-40 (3)']
  tag control: 'SC-40 (3)'
  tag objective: 'SC-40(03)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_40_3: true

  describe 'NIST SP 800-53A Rev 5 objective SC-40(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
