control 'SR-04(02)[02]' do
  impact 0.5
  title "the unique identification of #{input('sr_04_02_odp')} is maintained for tracking through the supply chain."
  desc <<~DESC
    Establish and maintain unique identification of the following systems and critical system components for tracking through the supply chain: #{input('sr_04_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the unique identification of #{input('sr_04_02_odp')} is maintained for tracking through the supply chain.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; system and services acquisition policy; procedures addressing supply chain protection; procedures addressing the integration of information security requirements into the acquisition process; supply chain risk management plan; list of supply chain elements, processes, and actors (associated with the system, system component, or system service) requiring implementation of unique identification processes, procedures, tools, mechanisms, equipment, techniques, and/or configurations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain protection responsibilities; organizational personnel with responsibilities for establishing and retaining the unique identification of supply chain elements, processes, and actors
      TEST: Organizational processes for defining, establishing, and retaining unique identification for supply chain elements, processes, and actors; mechanisms supporting and/or implementing the definition, establishment, and retention of unique identification for supply chain elements, processes, and actors
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Tracking the unique identification of systems and system components during development and transport activities provides a foundational identity structure for the establishment and maintenance of provenance. For example, system components may be labeled using serial numbers or tagged using radio-frequency identification tags. Labels and tags can help provide better visibility into the provenance of a system or system component. A system or system component may have more than one unique identifier. Identification methods are sufficient to support a forensic investigation after a supply chain compromise or event.
  GUIDANCE
  tag nist: ['SR-4 (2)']
  tag control: 'SR-4 (2)'
  tag objective: 'SR-04(02)[02]'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{}
  tag control_sr_4_2: true
  tag odp: %w{sr_04_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective SR-04(02)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
