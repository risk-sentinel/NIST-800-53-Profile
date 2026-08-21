control 'SA-08(07)' do
  impact 0.5
  title "#{input('sa_08_07_odp')} implement the security design principle of reduced complexity."
  desc <<~DESC
    Implement the security design principle of reduced complexity in #{input('sa_08_07_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_07_odp')} implement the security design principle of reduced complexity.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of reduced complexity used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of reduced complexity in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of reduced complexity in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of reduced complexity states that the system design is as simple and small as possible. A small and simple design is more understandable, more analyzable, and less prone to error. The reduced complexity principle applies to any aspect of a system, but it has particular importance for security due to the various analyses performed to obtain evidence about the emergent security property of the system. For such analyses to be successful, a small and simple design is essential. Application of the principle of reduced complexity contributes to the ability of system developers to understand the correctness and completeness of system security functions. It also facilitates the identification of potential vulnerabilities. The corollary of reduced complexity states that the simplicity of the system is directly related to the number of vulnerabilities it will contain; that is, simpler systems contain fewer vulnerabilities. An benefit of reduced complexity is that it is easier to understand whether the intended security policy has been captured in the system design and that fewer vulnerabilities are likely to be introduced during engineering development. An additional benefit is that any such conclusion about correctness, completeness, and the existence of vulnerabilities can be reached with a higher degree of assurance in contrast to conclusions reached in situations where the system design is inherently more complex. Transitioning from older technologies to newer technologies (e.g., transitioning from IPv4 to IPv6) may require implementing the older and newer technologies simultaneously during the transition period. This may result in a temporary increase in system complexity during the transition.
  GUIDANCE
  tag nist: ['SA-8 (7)']
  tag control: 'SA-8 (7)'
  tag objective: 'SA-08(07)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_7: true
  tag odp: %w{sa_08_07_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(07)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
