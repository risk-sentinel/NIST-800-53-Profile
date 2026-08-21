control 'SA-11(02)(d)[04]' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to perform vulnerability analyses during the subsequent testing and evaluation of the system, component, or service that produces evidence that meets #{input('sa_11_02_odp_06')}."
  desc <<~DESC
    Require the developer of the system, system component, or system service to perform threat modeling and vulnerability analyses during development and the subsequent testing and evaluation of the system, component, or service that:
      (a) Uses the following contextual information: #{input('sa_11_02_odp_01')};
      (b) Employs the following tools and methods: #{input('sa_11_02_odp_02')};
      (c) Conducts the modeling and analyses at the following level of rigor: #{input('sa_11_2_prm_3')} ; and
      (d) Produces evidence that meets the following acceptance criteria: #{input('sa_11_2_prm_4')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to perform vulnerability analyses during the subsequent testing and evaluation of the system, component, or service that produces evidence that meets #{input('sa_11_02_odp_06')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing system developer security testing; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system developer security test plans; records of developer security testing results for the system, system component, or system service; vulnerability scanning results; system risk assessment reports; threat and vulnerability analysis reports; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with developer security testing responsibilities; system developers; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for monitoring developer security testing and evaluation; mechanisms supporting and/or implementing the monitoring of developer security testing and evaluation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Systems, system components, and system services may deviate significantly from the functional and design specifications created during the requirements and design stages of the system development life cycle. Therefore, updates to threat modeling and vulnerability analyses of those systems, system components, and system services during development and prior to delivery are critical to the effective operation of those systems, components, and services. Threat modeling and vulnerability analyses at this stage of the system development life cycle ensure that design and implementation changes have been accounted for and that vulnerabilities created because of those changes have been reviewed and mitigated.
  GUIDANCE
  tag nist: ['SA-11 (2)']
  tag control: 'SA-11 (2)'
  tag objective: 'SA-11(02)(d)[04]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_11_2: true
  tag odp: %w{sa_11_02_odp_01 sa_11_02_odp_02 sa_11_02_odp_06 sa_11_2_prm_3 sa_11_2_prm_4}

  describe 'NIST SP 800-53A Rev 5 objective SA-11(02)(d)[04]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
