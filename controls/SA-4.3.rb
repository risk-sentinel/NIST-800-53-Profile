control 'SA-4 (3)' do
  impact 0.5
  title 'Development Methods, Techniques, and Practices'
  desc <<~DESC
    Require the developer of the system, system component, or system service to demonstrate the use of a system development life cycle process that includes:
      (a) #{input('sa_04_03_odp_01')};
      (b) #{input('sa_04_03_odp_02')} ; and
      (c) #{input('sa_04_03_odp_05')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-04(03)(a) the developer of the system, system component, or system service is required to demonstrate the use of a system development life cycle process that includes #{input('sa_04_03_odp_01')};
      SA-04(03)(b) the developer of the system, system component, or system service is required to demonstrate the use of a system development life cycle process that includes #{input('sa_04_03_odp_02')};
      SA-04(03)(c) the developer of the system, system component, or system service is required to demonstrate the use of a system development life cycle process that includes #{input('sa_04_03_odp_05')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing the integration of security and privacy requirements, descriptions, and criteria into the acquisition process; solicitation documents; acquisition documentation; acquisition contracts for the system, system component, or system service; list of systems security and privacy engineering methods to be included in the developer’s system development life cycle process; list of software development methods to be included in the developer’s system development life cycle process; list of testing, evaluation, or validation techniques to be included in the developer’s system development life cycle process; list of quality control processes to be included in the developer’s system development life cycle process; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with system life cycle responsibilities; system developers or service provider
      TEST: Organizational processes for development methods, techniques, and processes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Following a system development life cycle that includes state-of-the-practice software development methods, systems engineering methods, systems security and privacy engineering methods, and quality control processes helps to reduce the number and severity of latent errors within systems, system components, and system services. Reducing the number and severity of such errors reduces the number of vulnerabilities in those systems, components, and services. Transparency in the methods and techniques that developers select and implement for systems engineering, systems security and privacy engineering, software development, component and system assessments, and quality control processes provides an increased level of assurance in the trustworthiness of the system, system component, or system service being acquired.
  GUIDANCE
  tag nist: ['SA-4 (3)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_04_03_odp_01 sa_04_03_odp_02 sa_04_03_odp_05}

  describe 'NIST SP 800-53 Rev 5 control SA-4 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
