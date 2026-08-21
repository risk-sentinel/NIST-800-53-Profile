control 'SA-09(03)[04]' do
  impact 0.5
  title "trust relationships with external service provides based on #{input('sa_09_03_odp_02')} are maintained."
  desc <<~DESC
    Establish, document, and maintain trust relationships with external service providers based on the following requirements, properties, factors, or conditions: #{input('sa_9_3_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      trust relationships with external service provides based on #{input('sa_09_03_odp_02')} are maintained.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; acquisition contracts for the system, system component, or system service; acquisition documentation; solicitation documentation; service level agreements; memorandum of understanding; memorandum of agreements; list of organizational security and privacy requirements, properties, factors, or conditions for external provider services; documentation of trust relationships with external service providers; system security plan; privacy plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities; external providers of system services; organizational personnel with supply chain risk management responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Trust relationships between organizations and external service providers reflect the degree of confidence that the risk from using external services is at an acceptable level. Trust relationships can help organizations gain increased levels of confidence that service providers are providing adequate protection for the services rendered and can also be useful when conducting incident response or when planning for upgrades or obsolescence. Trust relationships can be complicated due to the potentially large number of entities participating in the consumer-provider interactions, subordinate relationships and levels of trust, and types of interactions between the parties. In some cases, the degree of trust is based on the level of control that organizations can exert on external service providers regarding the controls necessary for the protection of the service, information, or individual privacy and the evidence brought forth as to the effectiveness of the implemented controls. The level of control is established by the terms and conditions of the contracts or service-level agreements.
  GUIDANCE
  tag nist: ['SA-9 (3)']
  tag control: 'SA-9 (3)'
  tag objective: 'SA-09(03)[04]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_9_3: true
  tag odp: %w{sa_09_03_odp_02 sa_9_3_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective SA-09(03)[04]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
