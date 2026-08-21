control 'SA-17 (5)' do
  impact 0.5
  title 'Conceptually Simple Design'
  desc <<~DESC
    Require the developer of the system, system component, or system service to:
      (a) Design and structure the security-relevant hardware, software, and firmware to use a complete, conceptually simple protection mechanism with precisely defined semantics; and
      (b) Internally structure the security-relevant hardware, software, and firmware with specific regard for this mechanism.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-17(05)(a) the developer of the system, system component, or system service is required to design and structure the security-relevant hardware, software, and firmware to use a complete, conceptually simple protection mechanism with precisely defined semantics;
      SA-17(05)(b) the developer of the system, system component, or system service is required to internally structure the security-relevant hardware, software, and firmware with specific regard for this mechanism.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; enterprise architecture policy; procedures addressing developer security architecture and design specifications for the system; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system design documentation; system security architecture documentation; system configuration settings and associated documentation; developer documentation describing the design and structure of security-relevant hardware, software, and firmware components; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system developer; organizational personnel with information security architecture and design responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of reduced complexity states that the system design is as simple and small as possible (see [SA-8(7)](#sa-8.7) ). A small and simple design is easier to understand and analyze and is also less prone to error (see [AC-25](#ac-25), [SA-8(13)](#sa-8.13) ). The principle of reduced complexity applies to any aspect of a system, but it has particular importance for security due to the various analyses performed to obtain evidence about the emergent security property of the system. For such analyses to be successful, a small and simple design is essential. Application of the principle of reduced complexity contributes to the ability of system developers to understand the correctness and completeness of system security functions and facilitates the identification of potential vulnerabilities. The corollary of reduced complexity states that the simplicity of the system is directly related to the number of vulnerabilities it will contain. That is, simpler systems contain fewer vulnerabilities. An important benefit of reduced complexity is that it is easier to understand whether the security policy has been captured in the system design and that fewer vulnerabilities are likely to be introduced during engineering development. An additional benefit is that any such conclusion about correctness, completeness, and existence of vulnerabilities can be reached with a higher degree of assurance in contrast to conclusions reached in situations where the system design is inherently more complex.
  GUIDANCE
  tag nist: ['SA-17 (5)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-17 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
