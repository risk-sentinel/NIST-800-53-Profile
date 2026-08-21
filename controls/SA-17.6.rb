control 'SA-17 (6)' do
  impact 0.5
  title 'Structure for Testing'
  desc <<~DESC
    Require the developer of the system, system component, or system service to structure security-relevant hardware, software, and firmware to facilitate testing.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-17(06) the developer of the system, system component, or system service is required to structure security-relevant hardware, software, and firmware to facilitate testing.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; enterprise architecture policy; procedures addressing developer security architecture and design specifications for the system; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system design documentation; system security architecture documentation; privacy architecture documentation; system configuration settings and associated documentation; developer documentation describing the design and structure of security-relevant hardware, software, and firmware components to facilitate testing; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security and privacy responsibilities; system developer; organizational personnel with information security and privacy architecture and design responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Applying the security design principles in [SP 800-160-1](#e3cc0520-a366-4fc9-abc2-5272db7e3564) promotes complete, consistent, and comprehensive testing and evaluation of systems, system components, and services. The thoroughness of such testing contributes to the evidence produced to generate an effective assurance case or argument as to the trustworthiness of the system, system component, or service.
  GUIDANCE
  tag nist: ['SA-17 (6)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-17 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
