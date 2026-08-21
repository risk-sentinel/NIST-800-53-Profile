control 'SA-15(07)(b)' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to determine the exploitation potential for discovered vulnerabilities #{input('sa_15_07_odp_01')};"
  desc <<~DESC
    Require the developer of the system, system component, or system service #{input('sa_15_07_odp_01')} to:
      (a) Perform an automated vulnerability analysis using #{input('sa_15_07_odp_02')};
      (b) Determine the exploitation potential for discovered vulnerabilities;
      (c) Determine potential risk mitigations for delivered vulnerabilities; and
      (d) Deliver the outputs of the tools and results of the analysis to #{input('sa_15_07_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to determine the exploitation potential for discovered vulnerabilities #{input('sa_15_07_odp_01')};

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing development process, standards, and tools; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; vulnerability analysis tools and associated documentation; risk assessment reports; vulnerability analysis results; vulnerability mitigation reports; risk mitigation strategy documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system developer; organizational personnel performing automated vulnerability analysis on the system
      TEST: Organizational processes for vulnerability analysis of systems, system components, or system services under development; mechanisms supporting and/or implementing vulnerability analysis of systems, system components, or system services under development
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated tools can be more effective at analyzing exploitable weaknesses or deficiencies in large and complex systems, prioritizing vulnerabilities by severity, and providing recommendations for risk mitigations.
  GUIDANCE
  tag nist: ['SA-15 (7)']
  tag control: 'SA-15 (7)'
  tag objective: 'SA-15(07)(b)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_15_7: true
  tag odp: %w{sa_15_07_odp_01 sa_15_07_odp_02 sa_15_07_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SA-15(07)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
