control 'SA-08(15)' do
  impact 0.5
  title "#{input('sa_08_15_odp')} implement the security design principle of predicate permission."
  desc <<~DESC
    Implement the security design principle of predicate permission in #{input('sa_08_15_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_15_odp')} implement the security design principle of predicate permission.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of predicate permission used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of predicate permission in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of predicate permission in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of predicate permission states that system designers consider requiring multiple authorized entities to provide consent before a highly critical operation or access to highly sensitive data, information, or resources is allowed to proceed. [SALTZER75](#c9495d6e-ef64-4090-8509-e58c3b9009ff) originally named predicate permission the separation of privilege. It is also equivalent to separation of duty. The division of privilege among multiple parties decreases the likelihood of abuse and provides the safeguard that no single accident, deception, or breach of trust is sufficient to enable an unrecoverable action that can lead to significantly damaging effects. The design options for such a mechanism may require simultaneous action (e.g., the firing of a nuclear weapon requires two different authorized individuals to give the correct command within a small time window) or a sequence of operations where each successive action is enabled by some prior action, but no single individual is able to enable more than one action.
  GUIDANCE
  tag nist: ['SA-8 (15)']
  tag control: 'SA-8 (15)'
  tag objective: 'SA-08(15)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_15: true
  tag odp: %w{sa_08_15_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(15)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
