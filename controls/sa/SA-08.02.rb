control 'SA-08(02)' do
  impact 0.5
  title "#{input('sa_08_02_odp')} implement the security design principle of least common mechanism."
  desc <<~DESC
    Implement the security design principle of least common mechanism in #{input('sa_08_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_02_odp')} implement the security design principle of least common mechanism.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of least common mechanism used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of least common mechanism in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of least common mechanism in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of least common mechanism states that the amount of mechanism common to more than one user and depended on by all users is minimized [POPEK74](#79453f84-26a4-4995-8257-d32d37aefea3) . Mechanism minimization implies that different components of a system refrain from using the same mechanism to access a system resource. Every shared mechanism (especially a mechanism involving shared variables) represents a potential information path between users and is designed with care to ensure that it does not unintentionally compromise security [SALTZER75](#c9495d6e-ef64-4090-8509-e58c3b9009ff) . Implementing the principle of least common mechanism helps to reduce the adverse consequences of sharing the system state among different programs. A single program that corrupts a shared state (including shared variables) has the potential to corrupt other programs that are dependent on the state. The principle of least common mechanism also supports the principle of simplicity of design and addresses the issue of covert storage channels [LAMPSON73](#d1cdab13-4218-400d-91a9-c3818dfa5ec8).
  GUIDANCE
  tag nist: ['SA-8 (2)']
  tag control: 'SA-8 (2)'
  tag objective: 'SA-08(02)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_2: true
  tag odp: %w{sa_08_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
