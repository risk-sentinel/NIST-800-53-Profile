control 'SA-15(05)' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to reduce attack surfaces to #{input('sa_15_05_odp')}."
  desc <<~DESC
    Require the developer of the system, system component, or system service to reduce attack surfaces to #{input('sa_15_05_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to reduce attack surfaces to #{input('sa_15_05_odp')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing development process, standards, and tools; procedures addressing attack surface reduction; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system or system service; system design documentation; network diagram; system configuration settings and associated documentation establishing/enforcing organization-defined thresholds for reducing attack surfaces; list of restricted ports, protocols, functions, and services; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel responsible for attack surface reduction thresholds; system developer
      TEST: Organizational processes for defining attack surface reduction thresholds
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Attack surface reduction is closely aligned with threat and vulnerability analyses and system architecture and design. Attack surface reduction is a means of reducing risk to organizations by giving attackers less opportunity to exploit weaknesses or deficiencies (i.e., potential vulnerabilities) within systems, system components, and system services. Attack surface reduction includes implementing the concept of layered defenses, applying the principles of least privilege and least functionality, applying secure software development practices, deprecating unsafe functions, reducing entry points available to unauthorized users, reducing the amount of code that executes, and eliminating application programming interfaces (APIs) that are vulnerable to attacks.
  GUIDANCE
  tag nist: ['SA-15 (5)']
  tag control: 'SA-15 (5)'
  tag objective: 'SA-15(05)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_15_5: true
  tag odp: %w{sa_15_05_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-15(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
