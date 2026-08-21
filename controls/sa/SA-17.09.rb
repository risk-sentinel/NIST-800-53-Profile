control 'SA-17(09)' do
  impact 0.5
  title "different designs are used for #{input('sa_17_09_odp')} to satisfy a common set of requirements or to provide equivalent functionality."
  desc <<~DESC
    Use different designs for #{input('sa_17_09_odp')} to satisfy a common set of requirements or to provide equivalent functionality.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      different designs are used for #{input('sa_17_09_odp')} to satisfy a common set of requirements or to provide equivalent functionality.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; enterprise architecture policy; procedures addressing developer security architecture and design diversity for the system; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system design documentation; system security architecture documentation; system configuration settings and associated documentation; developer documentation describing design diversity; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system developer; organizational personnel with information security architecture responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Design diversity is achieved by supplying the same requirements specification to multiple developers, each of whom is responsible for developing a variant of the system or system component that meets the requirements. Variants can be in software design, in hardware design, or in both hardware and a software design. Differences in the designs of the variants can result from developer experience (e.g., prior use of a design pattern), design style (e.g., when decomposing a required function into smaller tasks, determining what constitutes a separate task and how far to decompose tasks into sub-tasks), selection of libraries to incorporate into the variant, and the development environment (e.g., different design tools make some design patterns easier to visualize). Hardware design diversity includes making different decisions about what information to keep in analog form and what information to convert to digital form, transmitting the same information at different times, and introducing delays in sampling (temporal diversity). Design diversity is commonly used to support fault tolerance.
  GUIDANCE
  tag nist: ['SA-17 (9)']
  tag control: 'SA-17 (9)'
  tag objective: 'SA-17(09)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_17_9: true
  tag odp: %w{sa_17_09_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-17(09)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
