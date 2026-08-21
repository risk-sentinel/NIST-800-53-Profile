control 'SA-10d.[03]' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to document the potential privacy impacts of approved changes;"
  desc <<~DESC
    Require the developer of the system, system component, or system service to:
      a. Perform configuration management during system, component, or service #{input('sa_10_odp_01')};
      b. Document, manage, and control the integrity of changes to #{input('sa_10_odp_02')};
      c. Implement only organization-approved changes to the system, component, or service;
      d. Document approved changes to the system, component, or service and the potential security and privacy impacts of such changes; and
      e. Track security flaws and flaw resolution within the system, component, or service and report findings to #{input('sa_10_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to document the potential privacy impacts of approved changes;

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing system developer configuration management; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system developer configuration management plan; security flaw and flaw resolution tracking records; system change authorization records; change control records; configuration management records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with configuration management responsibilities; system developers
      TEST: Organizational processes for monitoring developer configuration management; mechanisms supporting and/or implementing the monitoring of developer configuration management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations consider the quality and completeness of configuration management activities conducted by developers as direct evidence of applying effective security controls. Controls include protecting the master copies of material used to generate security-relevant portions of the system hardware, software, and firmware from unauthorized modification or destruction. Maintaining the integrity of changes to the system, system component, or system service requires strict configuration control throughout the system development life cycle to track authorized changes and prevent unauthorized changes.

    The configuration items that are placed under configuration management include the formal model; the functional, high-level, and low-level design specifications; other design data; implementation documentation; source code and hardware schematics; the current running version of the object code; tools for comparing new versions of security-relevant hardware descriptions and source code with previous versions; and test fixtures and documentation. Depending on the mission and business needs of organizations and the nature of the contractual relationships in place, developers may provide configuration management support during the operations and maintenance stage of the system development life cycle.
  GUIDANCE
  tag nist: ['SA-10']
  tag control: 'SA-10'
  tag objective: 'SA-10d.[03]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sa_10: true
  tag odp: %w{sa_10_odp_01 sa_10_odp_02 sa_10_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SA-10d.[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
