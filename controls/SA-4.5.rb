control 'SA-4 (5)' do
  impact 0.5
  title 'System, Component, and Service Configurations'
  desc <<~DESC
    Require the developer of the system, system component, or system service to:
      (a) Deliver the system, component, or service with #{input('sa_04_05_odp')} implemented; and
      (b) Use the configurations as the default for any subsequent system, component, or service reinstallation or upgrade.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-04(05)(a) the developer of the system, system component, or system service is required to deliver the system, component, or service with #{input('sa_04_05_odp')} implemented;
      SA-04(05)(b) the configurations are used as the default for any subsequent system, component, or service reinstallation or upgrade.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the integration of security requirements, descriptions, and criteria into the acquisition process; solicitation documents; acquisition documentation; acquisition contracts for the system, system component, or system service; security configurations to be implemented by the developer of the system, system component, or system service; service level agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with the responsibility to determine system security requirements; system developers or service provider; organizational personnel with information security responsibilities
      TEST: Mechanisms used to verify that the configuration of the system, component, or service is delivered as specified
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Examples of security configurations include the U.S. Government Configuration Baseline (USGCB), Security Technical Implementation Guides (STIGs), and any limitations on functions, ports, protocols, and services. Security characteristics can include requiring that default passwords have been changed.
  GUIDANCE
  tag nist: ['SA-4 (5)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{sa_04_05_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-4 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
