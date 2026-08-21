control 'SA-08(08)' do
  impact 0.5
  title "#{input('sa_08_08_odp')} implement the security design principle of secure evolvability."
  desc <<~DESC
    Implement the security design principle of secure evolvability in #{input('sa_08_08_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_08_odp')} implement the security design principle of secure evolvability.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of secure evolvability used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of secure evolvability in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of secure evolvability in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of secure evolvability states that a system is developed to facilitate the maintenance of its security properties when there are changes to the system’s structure, interfaces, interconnections (i.e., system architecture), functionality, or configuration (i.e., security policy enforcement). Changes include a new, enhanced, or upgraded system capability; maintenance and sustainment activities; and reconfiguration. Although it is not possible to plan for every aspect of system evolution, system upgrades and changes can be anticipated by analyses of mission or business strategic direction, anticipated changes in the threat environment, and anticipated maintenance and sustainment needs. It is unrealistic to expect that complex systems remain secure in contexts not envisioned during development, whether such contexts are related to the operational environment or to usage. A system may be secure in some new contexts, but there is no guarantee that its emergent behavior will always be secure. It is easier to build trustworthiness into a system from the outset, and it follows that the sustainment of system trustworthiness requires planning for change as opposed to adapting in an ad hoc or non-methodical manner. The benefits of this principle include reduced vendor life cycle costs, reduced cost of ownership, improved system security, more effective management of security risk, and less risk uncertainty.
  GUIDANCE
  tag nist: ['SA-8 (8)']
  tag control: 'SA-8 (8)'
  tag objective: 'SA-08(08)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_8: true
  tag odp: %w{sa_08_08_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(08)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
