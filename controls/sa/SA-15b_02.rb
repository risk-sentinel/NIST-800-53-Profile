control 'SA-15b.[02]' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to follow a documented development process in which the development process, standards, tools, tool options, and tool configurations are reviewed #{input('sa_15_odp_01')} to determine that the process, standards, tools, tool options, and tool configurations selected and employed satisfy #{input('sa_15_odp_03')}."
  desc <<~DESC
    a. Require the developer of the system, system component, or system service to follow a documented development process that:
      1. Explicitly addresses security and privacy requirements;
      2. Identifies the standards and tools used in the development process;
      3. Documents the specific tool options and tool configurations used in the development process; and
      4. Documents, manages, and ensures the integrity of changes to the process and/or tools used in development; and
    b. Review the development process, standards, tools, tool options, and tool configurations #{input('sa_15_odp_01')} to determine if the process, standards, tools, tool options and tool configurations selected and employed can satisfy the following security and privacy requirements: #{input('sa_15_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to follow a documented development process in which the development process, standards, tools, tool options, and tool configurations are reviewed #{input('sa_15_odp_01')} to determine that the process, standards, tools, tool options, and tool configurations selected and employed satisfy #{input('sa_15_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing development process, standards, and tools; procedures addressing the integration of security and privacy requirements during the development process; solicitation documentation; acquisition documentation; critical component inventory documentation; service level agreements; acquisition contracts for the system, system component, or system service; system developer documentation listing tool options/configuration guides; configuration management policy; configuration management records; documentation of development process reviews using maturity models; change control records; configuration control records; documented reviews of the development process, standards, tools, and tool options/configurations; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security and privacy responsibilities; system developer
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Development tools include programming languages and computer-aided design systems. Reviews of development processes include the use of maturity models to determine the potential effectiveness of such processes. Maintaining the integrity of changes to tools and processes facilitates effective supply chain risk assessment and mitigation. Such integrity requires configuration control throughout the system development life cycle to track authorized changes and prevent unauthorized changes.
  GUIDANCE
  tag nist: ['SA-15']
  tag control: 'SA-15'
  tag objective: 'SA-15b.[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sa_15: true
  tag odp: %w{sa_15_odp_01 sa_15_odp_03 sa_15_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective SA-15b.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
