control 'SR-06(01)' do
  impact 0.5
  title "#{input('sr_06_01_odp_01')} is/are employed on #{input('sr_06_01_odp_02')} associated with the system, system component, or system service."
  desc <<~DESC
    Employ #{input('sr_06_01_odp_01')} of the following supply chain elements, processes, and actors associated with the system, system component, or system service: #{input('sr_06_01_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sr_06_01_odp_01')} is/are employed on #{input('sr_06_01_odp_02')} associated with the system, system component, or system service.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management plan; system and services acquisition policy; procedures addressing supply chain protection; evidence of organizational analysis, independent third-party analysis, organizational penetration testing, and/or independent third-party penetration testing; list of supply chain elements, processes, and actors (associated with the system, system component, or system service) subject to analysis and/or testing; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities; organizational personnel with responsibilities for analyzing and/or testing supply chain elements, processes, and actors
      TEST: Organizational processes for defining and employing methods of analysis/testing of supply chain elements, processes, and actors; mechanisms supporting and/or implementing the analysis/testing of supply chain elements, processes, and actors
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Relationships between entities and procedures within the supply chain, including development and delivery, are considered. Supply chain elements include organizations, entities, or tools that are used for the research and development, design, manufacturing, acquisition, delivery, integration, operations, maintenance, and disposal of systems, system components, or system services. Supply chain processes include supply chain risk management programs; SCRM strategies and implementation plans; personnel and physical security programs; hardware, software, and firmware development processes; configuration management tools, techniques, and measures to maintain provenance; shipping and handling procedures; and programs, processes, or procedures associated with the production and distribution of supply chain elements. Supply chain actors are individuals with specific roles and responsibilities in the supply chain. The evidence generated and collected during analyses and testing of supply chain elements, processes, and actors is documented and used to inform organizational risk management activities and decisions.
  GUIDANCE
  tag nist: ['SR-6 (1)']
  tag control: 'SR-6 (1)'
  tag objective: 'SR-06(01)'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{}
  tag control_sr_6_1: true
  tag odp: %w{sr_06_01_odp_01 sr_06_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SR-06(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
