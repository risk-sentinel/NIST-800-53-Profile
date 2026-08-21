control 'SA-17(03)(e)' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to describe the security-relevant hardware, software, and firmware mechanisms that are not addressed in the formal top-level specification but are strictly internal to the security-relevant hardware, software, and firmware."
  desc <<~DESC
    Require the developer of the system, system component, or system service to:
      (a) Produce, as an integral part of the development process, a formal top-level specification that specifies the interfaces to security-relevant hardware, software, and firmware in terms of exceptions, error messages, and effects;
      (b) Show via proof to the extent feasible with additional informal demonstration as necessary, that the formal top-level specification is consistent with the formal policy model;
      (c) Show via informal demonstration, that the formal top-level specification completely covers the interfaces to security-relevant hardware, software, and firmware;
      (d) Show that the formal top-level specification is an accurate description of the implemented security-relevant hardware, software, and firmware; and
      (e) Describe the security-relevant hardware, software, and firmware mechanisms not addressed in the formal top-level specification but strictly internal to the security-relevant hardware, software, and firmware.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to describe the security-relevant hardware, software, and firmware mechanisms that are not addressed in the formal top-level specification but are strictly internal to the security-relevant hardware, software, and firmware.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; enterprise architecture policy; formal policy model; procedures addressing developer security architecture and design specifications for the system; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; formal top-level specification documentation; system security architecture and design documentation; system design documentation; system configuration settings and associated documentation; documentation describing security-relevant hardware, software, and firmware mechanisms not addressed in the formal top-level specification documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system developer; organizational personnel with information security architecture and design responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Correspondence is an important part of the assurance gained through modeling. It demonstrates that the implementation is an accurate transformation of the model, and that any additional code or implementation details that are present have no impact on the behaviors or policies being modeled. Formal methods can be used to show that the high-level security properties are satisfied by the formal system description, and that the formal system description is correctly implemented by a description of some lower level, including a hardware description. Consistency between the formal top-level specification and the formal policy models is generally not amenable to being fully proven. Therefore, a combination of formal and informal methods may be needed to demonstrate such consistency. Consistency between the formal top-level specification and the actual implementation may require the use of an informal demonstration due to limitations on the applicability of formal methods to prove that the specification accurately reflects the implementation. Hardware, software, and firmware mechanisms internal to security-relevant components include mapping registers and direct memory input and output.
  GUIDANCE
  tag nist: ['SA-17 (3)']
  tag control: 'SA-17 (3)'
  tag objective: 'SA-17(03)(e)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_17_3: true

  describe 'NIST SP 800-53A Rev 5 objective SA-17(03)(e)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
