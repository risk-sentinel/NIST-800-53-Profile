control 'SA-08(09)' do
  impact 0.5
  title "#{input('sa_08_09_odp')} implement the security design principle of trusted components."
  desc <<~DESC
    Implement the security design principle of trusted components in #{input('sa_08_09_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_09_odp')} implement the security design principle of trusted components.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management plan; system and services acquisition policy; procedures addressing the security design principle of trusted components used in the specification, design, development, implementation, and modification of the system; system design documentation; security, supply chain risk management, and privacy requirements and specifications for the system; system security and privacy architecture; procedures for determining component assurance; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for applying the security design principle of trusted components in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of trusted components in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of trusted components states that a component is trustworthy to at least a level commensurate with the security dependencies it supports (i.e., how much it is trusted to perform its security functions by other components). This principle enables the composition of components such that trustworthiness is not inadvertently diminished and the trust is not consequently misplaced. Ultimately, this principle demands some metric by which the trust in a component and the trustworthiness of a component can be measured on the same abstract scale. The principle of trusted components is particularly relevant when considering systems and components in which there are complex chains of trust dependencies. A trust dependency is also referred to as a trust relationship and there may be chains of trust relationships.

    The principle of trusted components also applies to a compound component that consists of subcomponents (e.g., a subsystem), which may have varying levels of trustworthiness. The conservative assumption is that the trustworthiness of a compound component is that of its least trustworthy subcomponent. It may be possible to provide a security engineering rationale that the trustworthiness of a particular compound component is greater than the conservative assumption. However, any such rationale reflects logical reasoning based on a clear statement of the trustworthiness objectives as well as relevant and credible evidence. The trustworthiness of a compound component is not the same as increased application of defense-in-depth layering within the component or a replication of components. Defense-in-depth techniques do not increase the trustworthiness of the whole above that of the least trustworthy component.
  GUIDANCE
  tag nist: ['SA-8 (9)']
  tag control: 'SA-8 (9)'
  tag objective: 'SA-08(09)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_9: true
  tag odp: %w{sa_08_09_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(09)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
