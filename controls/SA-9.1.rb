control 'SA-9 (1)' do
  impact 0.5
  title 'Risk Assessments and Organizational Approvals'
  desc <<~DESC
    (a) Conduct an organizational assessment of risk prior to the acquisition or outsourcing of information security services; and
    (b) Verify that the acquisition or outsourcing of dedicated information security services is approved by #{input('sa_09_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-09(01)(a) an organizational assessment of risk is conducted prior to the acquisition or outsourcing of information security services;
      SA-09(01)(b) #{input('sa_09_01_odp')} approve the acquisition or outsourcing of dedicated information security services.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; supply chain risk management policy and procedures; procedures addressing external system services; acquisition documentation; acquisition contracts for the system, system component, or system service; risk assessment reports; approval records for the acquisition or outsourcing of dedicated security services; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with system security responsibilities; external providers of system services; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for conducting a risk assessment prior to acquiring or outsourcing dedicated security services; organizational processes for approving the outsourcing of dedicated security services; mechanisms supporting and/or implementing risk assessment; mechanisms supporting and/or implementing approval processes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information security services include the operation of security devices, such as firewalls or key management services as well as incident monitoring, analysis, and response. Risks assessed can include system, mission or business, security, privacy, or supply chain risks.
  GUIDANCE
  tag nist: ['SA-9 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_09_01_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-9 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
