control 'SA-8 (29)' do
  impact 0.5
  title 'Repeatable and Documented Procedures'
  desc <<~DESC
    Implement the security design principle of repeatable and documented procedures in #{input('sa_08_29_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-08(29) #{input('sa_08_29_odp')} implement the security design principle of repeatable and documented procedures.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of repeatable and documented procedures used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of repeatable and documented procedures in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of repeatable and documented procedures in system specification, design, development, implementation, and modification; mechanisms that enforce security policies
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of repeatable and documented procedures states that the techniques and methods employed to construct a system component permit the same component to be completely and correctly reconstructed at a later time. Repeatable and documented procedures support the development of a component that is identical to the component created earlier, which may be in widespread use. In the case of other system artifacts (e.g., documentation and testing results), repeatability supports consistency and the ability to inspect the artifacts. Repeatable and documented procedures can be introduced at various stages within the system development life cycle and contribute to the ability to evaluate assurance claims for the system. Examples include systematic procedures for code development and review, procedures for the configuration management of development tools and system artifacts, and procedures for system delivery.
  GUIDANCE
  tag nist: ['SA-8 (29)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_08_29_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-8 (29)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
