control 'SA-08(23)' do
  impact 0.5
  title "#{input('sa_08_23_odp')} implement the security design principle of secure defaults."
  desc <<~DESC
    Implement the security design principle of secure defaults in #{input('sa_08_23_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_23_odp')} implement the security design principle of secure defaults.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; configuration management policy; procedures addressing the security design principle of secure defaults used in the specification, design, development, implementation, and modification of the system; system design documentation; procedures addressing the baseline configuration of the system; configuration management plan; system architecture and configuration documentation; system configuration settings and associated documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; procedures addressing system documentation; system documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of secure defaults in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of secure defaults in system specification, design, development, implementation, and modification; organizational processes for managing baseline configurations; mechanisms supporting configuration control of the baseline configuration
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of secure defaults states that the default configuration of a system (including its constituent subsystems, components, and mechanisms) reflects a restrictive and conservative enforcement of security policy. The principle of secure defaults applies to the initial (i.e., default) configuration of a system as well as to the security engineering and design of access control and other security functions that follow a "deny unless explicitly authorized" strategy. The initial configuration aspect of this principle requires that any "as shipped" configuration of a system, subsystem, or system component does not aid in the violation of the security policy and can prevent the system from operating in the default configuration for those cases where the security policy itself requires configuration by the operational user.

    Restrictive defaults mean that the system will operate "as-shipped" with adequate self-protection and be able to prevent security breaches before the intended security policy and system configuration is established. In cases where the protection provided by the "as-shipped" product is inadequate, stakeholders assess the risk of using it prior to establishing a secure initial state. Adherence to the principle of secure defaults guarantees that a system is established in a secure state upon successfully completing initialization. In situations where the system fails to complete initialization, either it will perform a requested operation using secure defaults or it will not perform the operation. Refer to the principles of continuous protection and secure failure and recovery that parallel this principle to provide the ability to detect and recover from failure.

    The security engineering approach to this principle states that security mechanisms deny requests unless the request is found to be well-formed and consistent with the security policy. The insecure alternative is to allow a request unless it is shown to be inconsistent with the policy. In a large system, the conditions that are satisfied to grant a request that is denied by default are often far more compact and complete than those that would need to be checked in order to deny a request that is granted by default.
  GUIDANCE
  tag nist: ['SA-8 (23)']
  tag control: 'SA-8 (23)'
  tag objective: 'SA-08(23)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_23: true
  tag odp: %w{sa_08_23_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(23)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
