control 'SA-17(04)(e)' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to describe the security-relevant hardware, software, and firmware mechanisms that are not addressed in the descriptive top-level specification but are strictly internal to the security-relevant hardware, software, and firmware."
  desc <<~DESC
    Require the developer of the system, system component, or system service to:
      (a) Produce, as an integral part of the development process, an informal descriptive top-level specification that specifies the interfaces to security-relevant hardware, software, and firmware in terms of exceptions, error messages, and effects;
      (b) Show via #{input('sa_17_04_odp')} that the descriptive top-level specification is consistent with the formal policy model;
      (c) Show via informal demonstration, that the descriptive top-level specification completely covers the interfaces to security-relevant hardware, software, and firmware;
      (d) Show that the descriptive top-level specification is an accurate description of the interfaces to security-relevant hardware, software, and firmware; and
      (e) Describe the security-relevant hardware, software, and firmware mechanisms not addressed in the descriptive top-level specification but strictly internal to the security-relevant hardware, software, and firmware.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to describe the security-relevant hardware, software, and firmware mechanisms that are not addressed in the descriptive top-level specification but are strictly internal to the security-relevant hardware, software, and firmware.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; enterprise architecture policy; formal policy model; procedures addressing developer security architecture and design specifications for the system; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; informal, descriptive top-level specification documentation; system security architecture and design documentation; system design documentation; system configuration settings and associated documentation; documentation describing security-relevant hardware, software, and firmware mechanisms not addressed in the informal, descriptive top-level specification documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system developer; organizational personnel with information security architecture and design responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Correspondence is an important part of the assurance gained through modeling. It demonstrates that the implementation is an accurate transformation of the model, and that additional code or implementation detail has no impact on the behaviors or policies being modeled. Consistency between the descriptive top-level specification (i.e., high-level/low-level design) and the formal policy model is generally not amenable to being fully proven. Therefore, a combination of formal and informal methods may be needed to show such consistency. Hardware, software, and firmware mechanisms strictly internal to security-relevant hardware, software, and firmware include mapping registers and direct memory input and output.
  GUIDANCE
  tag nist: ['SA-17 (4)']
  tag control: 'SA-17 (4)'
  tag objective: 'SA-17(04)(e)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_17_4: true
  tag odp: %w{sa_17_04_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-17(04)(e)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
