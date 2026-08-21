control 'SR-03a.[01]' do
  impact 0.5
  title "a process or processes is/are established to identify and address weaknesses or deficiencies in the supply chain elements and processes of #{input('sr_03_odp_01')};"
  desc <<~DESC
    a. Establish a process or processes to identify and address weaknesses or deficiencies in the supply chain elements and processes of #{input('sr_03_odp_01')} in coordination with #{input('sr_03_odp_02')};
    b. Employ the following controls to protect against supply chain risks to the system, system component, or system service and to limit the harm or consequences from supply chain-related events: #{input('sr_03_odp_03')} ; and
    c. Document the selected and implemented supply chain processes and controls in #{input('sr_03_odp_04')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a process or processes is/are established to identify and address weaknesses or deficiencies in the supply chain elements and processes of #{input('sr_03_odp_01')};

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy; supply chain risk management procedures; supply chain risk management strategy; supply chain risk management plan; systems and critical system components inventory documentation; system and services acquisition policy; system and services acquisition procedures; procedures addressing the integration of information security and privacy requirements into the acquisition process; solicitation documentation; acquisition documentation (including purchase orders); service level agreements; acquisition contracts for systems or services; risk register documentation; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for identifying and addressing supply chain element and process deficiencies
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Supply chain elements include organizations, entities, or tools employed for the research and development, design, manufacturing, acquisition, delivery, integration, operations and maintenance, and disposal of systems and system components. Supply chain processes include hardware, software, and firmware development processes; shipping and handling procedures; personnel security and physical security programs; configuration management tools, techniques, and measures to maintain provenance; or other programs, processes, or procedures associated with the development, acquisition, maintenance and disposal of systems and system components. Supply chain elements and processes may be provided by organizations, system integrators, or external providers. Weaknesses or deficiencies in supply chain elements or processes represent potential vulnerabilities that can be exploited by adversaries to cause harm to the organization and affect its ability to carry out its core missions or business functions. Supply chain personnel are individuals with roles and responsibilities in the supply chain.
  GUIDANCE
  tag nist: ['SR-3']
  tag control: 'SR-3'
  tag objective: 'SR-03a.[01]'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sr_3: true
  tag odp: %w{sr_03_odp_01 sr_03_odp_02 sr_03_odp_03 sr_03_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective SR-03a.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
