control 'IR-04(10)' do
  impact 0.5
  title "incident handling activities involving supply chain events are coordinated with other organizations involved in the supply chain."
  desc <<~DESC
    Coordinate incident handling activities involving supply chain events with other organizations involved in the supply chain.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      incident handling activities involving supply chain events are coordinated with other organizations involved in the supply chain.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing supply chain coordination and supply chain risk information sharing with the Federal Acquisition Security Council; acquisition contracts; service-level agreements; incident response plan; supply chain risk management plan; system security plan; incident response plans of other organization involved in supply chain activities; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with mission and business responsibilities; organizational personnel with legal responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities; organizational personnel with acquisition responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations involved in supply chain activities include product developers, system integrators, manufacturers, packagers, assemblers, distributors, vendors, and resellers. Supply chain incidents can occur anywhere through or to the supply chain and include compromises or breaches that involve primary or sub-tier providers, information technology products, system components, development processes or personnel, and distribution processes or warehousing facilities. Organizations consider including processes for protecting and sharing incident information in information exchange agreements and their obligations for reporting incidents to government oversight bodies (e.g., Federal Acquisition Security Council).
  GUIDANCE
  tag nist: ['IR-4 (10)']
  tag control: 'IR-4 (10)'
  tag objective: 'IR-04(10)'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag control_ir_4_10: true

  describe 'NIST SP 800-53A Rev 5 objective IR-04(10)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
