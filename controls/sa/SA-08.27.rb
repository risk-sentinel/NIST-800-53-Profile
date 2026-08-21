control 'SA-08(27)' do
  impact 0.5
  title "#{input('sa_08_27_odp')} implement the security design principle of human factored security."
  desc <<~DESC
    Implement the security design principle of human factored security in #{input('sa_08_27_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_27_odp')} implement the security design principle of human factored security.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of human factored security used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; usability analysis; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with human factored security responsibilities; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of human factored security in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of human factored security in system specification, design, development, implementation, and modification; mechanisms that enforce security policies
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of human factored security states that the user interface for security functions and supporting services is intuitive, user-friendly, and provides feedback for user actions that affect such policy and its enforcement. The mechanisms that enforce security policy are not intrusive to the user and are designed not to degrade user efficiency. Security policy enforcement mechanisms also provide the user with meaningful, clear, and relevant feedback and warnings when insecure choices are being made. Particular attention is given to interfaces through which personnel responsible for system administration and operation configure and set up the security policies. Ideally, these personnel are able to understand the impact of their choices. Personnel with system administrative and operational responsibilities are able to configure systems before start-up and administer them during runtime with confidence that their intent is correctly mapped to the system’s mechanisms. Security services, functions, and mechanisms do not impede or unnecessarily complicate the intended use of the system. There is a trade-off between system usability and the strictness necessary for security policy enforcement. If security mechanisms are frustrating or difficult to use, then users may disable them, avoid them, or use them in ways inconsistent with the security requirements and protection needs that the mechanisms were designed to satisfy.
  GUIDANCE
  tag nist: ['SA-8 (27)']
  tag control: 'SA-8 (27)'
  tag objective: 'SA-08(27)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_27: true
  tag odp: %w{sa_08_27_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(27)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
