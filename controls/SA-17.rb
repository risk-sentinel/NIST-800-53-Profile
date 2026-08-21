control 'SA-17' do
  impact 0.5
  title 'Developer Security and Privacy Architecture and Design'
  desc <<~DESC
    Require the developer of the system, system component, or system service to produce a design specification and security and privacy architecture that:
      a. Is consistent with the organization’s security and privacy architecture that is an integral part the organization’s enterprise architecture;
      b. Accurately and completely describes the required security and privacy functionality, and the allocation of controls among physical and logical components; and
      c. Expresses how individual security and privacy functions, mechanisms, and services work together to provide required security and privacy capabilities and a unified approach to protection.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-17(a)
        SA-17(a)[01] the developer of the system, system component, or system service is required to produce a design specification and security architecture that are consistent with the organization’s security architecture, which is an integral part the organization’s enterprise architecture;
        SA-17(a)[02] the developer of the system, system component, or system service is required to produce a design specification and privacy architecture that are consistent with the organization’s privacy architecture, which is an integral part the organization’s enterprise architecture;
      SA-17(b)
        SA-17(b)[01] the developer of the system, system component, or system service is required to produce a design specification and security architecture that accurately and completely describe the required security functionality and the allocation of controls among physical and logical components;
        SA-17(b)[02] the developer of the system, system component, or system service is required to produce a design specification and privacy architecture that accurately and completely describe the required privacy functionality and the allocation of controls among physical and logical components;
      SA-17(c)
        SA-17(c)[01] the developer of the system, system component, or system service is required to produce a design specification and security architecture that express how individual security functions, mechanisms, and services work together to provide required security capabilities and a unified approach to protection;
        SA-17(c)[02] the developer of the system, system component, or system service is required to produce a design specification and privacy architecture that express how individual privacy functions, mechanisms, and services work together to provide required privacy capabilities and a unified approach to protection.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; enterprise architecture policy; enterprise architecture documentation; procedures addressing developer security and privacy architecture and design specifications for the system; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system design documentation; information system configuration settings and associated documentation; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities; system developer
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Developer security and privacy architecture and design are directed at external developers, although they could also be applied to internal (in-house) development. In contrast, [PL-8](#pl-8) is directed at internal developers to ensure that organizations develop a security and privacy architecture that is integrated with the enterprise architecture. The distinction between SA-17 and [PL-8](#pl-8) is especially important when organizations outsource the development of systems, system components, or system services and when there is a requirement to demonstrate consistency with the enterprise architecture and security and privacy architecture of the organization. [ISO 15408-2](#87087451-2af5-43d4-88c1-d66ad850f614), [ISO 15408-3](#4452efc0-e79e-47b8-aa30-b54f3ef61c2f) , and [SP 800-160-1](#e3cc0520-a366-4fc9-abc2-5272db7e3564) provide information on security architecture and design, including formal policy models, security-relevant components, formal and informal correspondence, conceptually simple design, and structuring for least privilege and testing.
  GUIDANCE
  tag nist: ['SA-17']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{HIGH}
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control SA-17' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
