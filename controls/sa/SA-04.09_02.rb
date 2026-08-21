control 'SA-04(09)[02]' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to identify the ports intended for organizational use;"
  desc <<~DESC
    Require the developer of the system, system component, or system service to identify the functions, ports, protocols, and services intended for organizational use.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to identify the ports intended for organizational use;

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the integration of security requirements, descriptions, and criteria into the acquisition process; system design documentation; system documentation, including functions, ports, protocols, and services intended for organizational use; acquisition contracts for systems or services; acquisition documentation; solicitation documentation; service level agreements; organizational security requirements, descriptions, and criteria for developers of systems, system components, and system services; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with the responsibility for determining system security requirements; system/network administrators; organizational personnel operating, using, and/or maintaining the system; system developers; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The identification of functions, ports, protocols, and services early in the system development life cycle (e.g., during the initial requirements definition and design stages) allows organizations to influence the design of the system, system component, or system service. This early involvement in the system development life cycle helps organizations avoid or minimize the use of functions, ports, protocols, or services that pose unnecessarily high risks and understand the trade-offs involved in blocking specific ports, protocols, or services or requiring system service providers to do so. Early identification of functions, ports, protocols, and services avoids costly retrofitting of controls after the system, component, or system service has been implemented. [SA-9](#sa-9) describes the requirements for external system services. Organizations identify which functions, ports, protocols, and services are provided from external sources.
  GUIDANCE
  tag nist: ['SA-4 (9)']
  tag control: 'SA-4 (9)'
  tag objective: 'SA-04(09)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sa_4_9: true

  describe 'NIST SP 800-53A Rev 5 objective SA-04(09)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
