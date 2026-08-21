control 'SA-17(01)(b)[01]' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to prove that the formal policy model is internally consistent and sufficient to enforce the defined elements of the organizational security policy when implemented;"
  desc <<~DESC
    Require the developer of the system, system component, or system service to:
      (a) Produce, as an integral part of the development process, a formal policy model describing the #{input('sa_17_1_prm_1')} to be enforced; and
      (b) Prove that the formal policy model is internally consistent and sufficient to enforce the defined elements of the organizational security and privacy policy when implemented.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to prove that the formal policy model is internally consistent and sufficient to enforce the defined elements of the organizational security policy when implemented;

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; enterprise architecture policy; enterprise architecture documentation; procedures addressing developer security and privacy architecture and design specifications for the system; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system design documentation; system configuration settings and associated documentation; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities; system developer
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Formal models describe specific behaviors or security and privacy policies using formal languages, thus enabling the correctness of those behaviors and policies to be formally proven. Not all components of systems can be modeled. Generally, formal specifications are scoped to the behaviors or policies of interest, such as nondiscretionary access control policies. Organizations choose the formal modeling language and approach based on the nature of the behaviors and policies to be described and the available tools.
  GUIDANCE
  tag nist: ['SA-17 (1)']
  tag control: 'SA-17 (1)'
  tag objective: 'SA-17(01)(b)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_17_1: true
  tag odp: %w{sa_17_1_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective SA-17(01)(b)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
