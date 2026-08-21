control 'SC-40 (1)' do
  impact 0.5
  title 'Electromagnetic Interference'
  desc <<~DESC
    Implement cryptographic mechanisms that achieve #{input('sc_40_01_odp')} against the effects of intentional electromagnetic interference.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-40(01) cryptographic mechanisms that achieve #{input('sc_40_01_odp')} against the effects of intentional electromagnetic interference are implemented.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; access control policy and procedures; procedures addressing wireless link protection; system design documentation; wireless network diagrams; system configuration settings and associated documentation; system architecture; system communications hardware and software; security categorization results; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel authorizing, installing, configuring, and/or maintaining internal and external wireless links
      TEST: Cryptographic mechanisms enforcing protections against effects of intentional electromagnetic interference
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The implementation of cryptographic mechanisms for electromagnetic interference protects systems against intentional jamming that might deny or impair communications by ensuring that wireless spread spectrum waveforms used to provide anti-jam protection are not predictable by unauthorized individuals. The implementation of cryptographic mechanisms may also coincidentally mitigate the effects of unintentional jamming due to interference from legitimate transmitters that share the same spectrum. Mission requirements, projected threats, concept of operations, and laws, executive orders, directives, regulations, policies, and standards determine levels of wireless link availability, cryptography needed, and performance.
  GUIDANCE
  tag nist: ['SC-40 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_40_01_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-40 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
