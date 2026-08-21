control 'SA-17 (2)' do
  impact 0.5
  title 'Security-relevant Components'
  desc <<~DESC
    Require the developer of the system, system component, or system service to:
      (a) Define security-relevant hardware, software, and firmware; and
      (b) Provide a rationale that the definition for security-relevant hardware, software, and firmware is complete.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-17(02)(a)
        SA-17(02)(a)[01] the developer of the system, system component, or system service is required to define security-relevant hardware;
        SA-17(02)(a)[02] the developer of the system, system component, or system service is required to define security-relevant software;
        SA-17(02)(a)[03] the developer of the system, system component, or system service is required to define security-relevant firmware;
      SA-17(02)(b) the developer of the system, system component, or system service is required to provide a rationale that the definition for security-relevant hardware, software, and firmware is complete.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; enterprise architecture policy; procedures addressing developer security architecture and design specifications for the system; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; list of security-relevant hardware, software, and firmware components; documented rationale of completeness regarding definitions provided for security-relevant hardware, software, and firmware; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system developers; organizational personnel with information security architecture and design responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The security-relevant hardware, software, and firmware represent the portion of the system, component, or service that is trusted to perform correctly to maintain required security properties.
  GUIDANCE
  tag nist: ['SA-17 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-17 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
