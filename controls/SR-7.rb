control 'SR-7' do
  impact 0.5
  title 'Supply Chain Operations Security'
  desc <<~DESC
    Employ the following Operations Security (OPSEC) controls to protect supply chain-related information for the system, system component, or system service: #{input('sr_07_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SR-07 #{input('sr_07_odp')} are employed to protect supply chain-related information for the system, system component, or system service.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management plan; supply chain risk management procedures; system and services acquisition policy; system and services acquisition procedures; procedures addressing supply chain protection; list of OPSEC controls to be employed; solicitation documentation; acquisition documentation; acquisition contracts for the system, system component, or system service; records of all-source intelligence analyses; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with OPSEC responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for defining and employing OPSEC safeguards; mechanisms supporting and/or implementing the definition and employment of OPSEC safeguards
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Supply chain OPSEC expands the scope of OPSEC to include suppliers and potential suppliers. OPSEC is a process that includes identifying critical information, analyzing friendly actions related to operations and other activities to identify actions that can be observed by potential adversaries, determining indicators that potential adversaries might obtain that could be interpreted or pieced together to derive information in sufficient time to cause harm to organizations, implementing safeguards or countermeasures to eliminate or reduce exploitable vulnerabilities and risk to an acceptable level, and considering how aggregated information may expose users or specific uses of the supply chain. Supply chain information includes user identities; uses for systems, system components, and system services; supplier identities; security and privacy requirements; system and component configurations; supplier processes; design specifications; and testing and evaluation results. Supply chain OPSEC may require organizations to withhold mission or business information from suppliers and may include the use of intermediaries to hide the end use or users of systems, system components, or system services.
  GUIDANCE
  tag nist: ['SR-7']
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{}
  tag odp: %w{sr_07_odp}

  describe 'NIST SP 800-53 Rev 5 control SR-7' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
