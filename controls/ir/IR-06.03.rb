control 'IR-06(03)' do
  impact 0.5
  title "incident information is provided to the provider of the product or service and other organizations involved in the supply chain or supply chain governance for systems or system components related to the incident."
  desc <<~DESC
    Provide incident information to the provider of the product or service and other organizations involved in the supply chain or supply chain governance for systems or system components related to the incident.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      incident information is provided to the provider of the product or service and other organizations involved in the supply chain or supply chain governance for systems or system components related to the incident.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing supply chain coordination and supply chain risk information sharing with the Federal Acquisition Security Council; acquisition policy; acquisition contracts; service-level agreements; incident response plan; supply chain risk management plan; system security plan; plans of other organizations involved in supply chain activities; other relevant documents or records
      INTERVIEW: Organizational personnel with incident reporting responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities; organization personnel with acquisition responsibilities
      TEST: Organizational processes for incident reporting; organizational processes for supply chain risk information sharing; mechanisms supporting and/or implementing the reporting of incident information involved in the supply chain
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations involved in supply chain activities include product developers, system integrators, manufacturers, packagers, assemblers, distributors, vendors, and resellers. Entities that provide supply chain governance include the Federal Acquisition Security Council (FASC). Supply chain incidents include compromises or breaches that involve information technology products, system components, development processes or personnel, distribution processes, or warehousing facilities. Organizations determine the appropriate information to share and consider the value gained from informing external organizations about supply chain incidents, including the ability to improve processes or to identify the root cause of an incident.
  GUIDANCE
  tag nist: ['IR-6 (3)']
  tag control: 'IR-6 (3)'
  tag objective: 'IR-06(03)'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ir_6_3: true

  describe 'NIST SP 800-53A Rev 5 objective IR-06(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
