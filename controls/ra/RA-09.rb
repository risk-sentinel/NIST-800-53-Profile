control 'RA-09' do
  impact 0.5
  title "critical system components and functions are identified by performing a criticality analysis for #{input('ra_09_odp_01')} at #{input('ra_09_odp_02')}."
  desc <<~DESC
    Identify critical system components and functions by performing a criticality analysis for #{input('ra_09_odp_01')} at #{input('ra_09_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      critical system components and functions are identified by performing a criticality analysis for #{input('ra_09_odp_01')} at #{input('ra_09_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; assessment reports; criticality analysis/finalized criticality for each component/subcomponent; audit records/event logs; analysis reports; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with assessment and auditing responsibilities; organizational personnel with criticality analysis responsibilities; system/network administrators; organizational personnel with security responsibilities
      TEST: Organizational processes for assessments and audits; mechanisms/tools supporting and/or implementing assessments and auditing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Not all system components, functions, or services necessarily require significant protections. For example, criticality analysis is a key tenet of supply chain risk management and informs the prioritization of protection activities. The identification of critical system components and functions considers applicable laws, executive orders, regulations, directives, policies, standards, system functionality requirements, system and component interfaces, and system and component dependencies. Systems engineers conduct a functional decomposition of a system to identify mission-critical functions and components. The functional decomposition includes the identification of organizational missions supported by the system, decomposition into the specific functions to perform those missions, and traceability to the hardware, software, and firmware components that implement those functions, including when the functions are shared by many components within and external to the system.

    The operational environment of a system or a system component may impact the criticality, including the connections to and dependencies on cyber-physical systems, devices, system-of-systems, and outsourced IT services. System components that allow unmediated access to critical system components or functions are considered critical due to the inherent vulnerabilities that such components create. Component and function criticality are assessed in terms of the impact of a component or function failure on the organizational missions that are supported by the system that contains the components and functions.

    Criticality analysis is performed when an architecture or design is being developed, modified, or upgraded. If such analysis is performed early in the system development life cycle, organizations may be able to modify the system design to reduce the critical nature of these components and functions, such as by adding redundancy or alternate paths into the system design. Criticality analysis can also influence the protection measures required by development contractors. In addition to criticality analysis for systems, system components, and system services, criticality analysis of information is an important consideration. Such analysis is conducted as part of security categorization in [RA-2](#ra-2).
  GUIDANCE
  tag nist: ['RA-9']
  tag control: 'RA-9'
  tag objective: 'RA-09'
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ra_9: true
  tag odp: %w{ra_09_odp_01 ra_09_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective RA-09' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
