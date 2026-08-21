control 'SA-4 (2)' do
  impact 0.5
  title 'Design and Implementation Information for Controls'
  desc <<~DESC
    Require the developer of the system, system component, or system service to provide design and implementation information for the controls that includes: #{input('sa_04_02_odp_01')} at #{input('sa_04_02_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-04(02) the developer of the system, system component, or system service is required to provide design and implementation information for the controls that includes using #{input('sa_04_02_odp_01')} at #{input('sa_04_02_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing the integration of security requirements, descriptions, and criteria into the acquisition process; solicitation documents; acquisition documentation; acquisition contracts for the system, system components, or system services; design and implementation information for controls employed in the system, system component, or system service; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with the responsibility to determine system security requirements; system developers or service provider; organizational personnel with information security responsibilities
      TEST: Organizational processes for determining the level of detail for system design and controls; organizational processes for developing acquisition contracts; mechanisms supporting and/or implementing the development of system design details
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may require different levels of detail in the documentation for the design and implementation of controls in organizational systems, system components, or system services based on mission and business requirements, requirements for resiliency and trustworthiness, and requirements for analysis and testing. Systems can be partitioned into multiple subsystems. Each subsystem within the system can contain one or more modules. The high-level design for the system is expressed in terms of subsystems and the interfaces between subsystems providing security-relevant functionality. The low-level design for the system is expressed in terms of modules and the interfaces between modules providing security-relevant functionality. Design and implementation documentation can include manufacturer, version, serial number, verification hash signature, software libraries used, date of purchase or download, and the vendor or download source. Source code and hardware schematics are referred to as the implementation representation of the system.
  GUIDANCE
  tag nist: ['SA-4 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{sa_04_02_odp_01 sa_04_02_odp_03}

  describe 'NIST SP 800-53 Rev 5 control SA-4 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
