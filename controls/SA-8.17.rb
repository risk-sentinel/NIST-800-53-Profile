control 'SA-8 (17)' do
  impact 0.5
  title 'Secure Distributed Composition'
  desc <<~DESC
    Implement the security design principle of secure distributed composition in #{input('sa_08_17_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-08(17) #{input('sa_08_17_odp')} implement the security design principle of secure distributed composition.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of secure distributed composition used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of secure distributed composition in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of secure distributed composition in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of secure distributed composition states that the composition of distributed components that enforce the same system security policy result in a system that enforces that policy at least as well as the individual components do. Many of the design principles for secure systems deal with how components can or should interact. The need to create or enable a capability from the composition of distributed components can magnify the relevancy of these principles. In particular, the translation of security policy from a stand-alone to a distributed system or a system-of-systems can have unexpected or emergent results. Communication protocols and distributed data consistency mechanisms help to ensure consistent policy enforcement across a distributed system. To ensure a system-wide level of assurance of correct policy enforcement, the security architecture of a distributed composite system is thoroughly analyzed.
  GUIDANCE
  tag nist: ['SA-8 (17)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_08_17_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-8 (17)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
