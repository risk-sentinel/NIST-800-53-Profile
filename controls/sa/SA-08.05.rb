control 'SA-08(05)' do
  impact 0.5
  title "#{input('sa_08_05_odp')} implement the security design principle of efficiently mediated access."
  desc <<~DESC
    Implement the security design principle of efficiently mediated access in #{input('sa_08_05_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_05_odp')} implement the security design principle of efficiently mediated access.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of efficiently mediated access used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of efficiently mediated access in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of efficiently mediated access in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of efficiently mediated access states that policy enforcement mechanisms utilize the least common mechanism available while satisfying stakeholder requirements within expressed constraints. The mediation of access to system resources (i.e., CPU, memory, devices, communication ports, services, infrastructure, data, and information) is often the predominant security function of secure systems. It also enables the realization of protections for the capability provided to stakeholders by the system. Mediation of resource access can result in performance bottlenecks if the system is not designed correctly. For example, by using hardware mechanisms, efficiently mediated access can be achieved. Once access to a low-level resource such as memory has been obtained, hardware protection mechanisms can ensure that out-of-bounds access does not occur.
  GUIDANCE
  tag nist: ['SA-8 (5)']
  tag control: 'SA-8 (5)'
  tag objective: 'SA-08(05)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_5: true
  tag odp: %w{sa_08_05_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
