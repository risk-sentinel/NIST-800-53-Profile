control 'SA-23' do
  impact 0.5
  title 'Specialization'
  desc <<~DESC
    Employ #{input('sa_23_odp_01')} on #{input('sa_23_odp_02')} supporting mission essential services or functions to increase the trustworthiness in those systems or components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-23 #{input('sa_23_odp_01')} is employed on #{input('sa_23_odp_02')} supporting essential services or functions to increase the trustworthiness in those systems or components.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing design modification, augmentation, or reconfiguration of systems or system components; documented evidence of design modification, augmentation, or reconfiguration; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with the responsibility for security architecture; organizational personnel responsible for configuration management
      TEST: Organizational processes for the modification of design, augmentation, or reconfiguration of systems or system components; mechanisms supporting and/or implementing design modification, augmentation, or reconfiguration of systems or system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    It is often necessary for a system or system component that supports mission-essential services or functions to be enhanced to maximize the trustworthiness of the resource. Sometimes this enhancement is done at the design level. In other instances, it is done post-design, either through modifications of the system in question or by augmenting the system with additional components. For example, supplemental authentication or non-repudiation functions may be added to the system to enhance the identity of critical resources to other resources that depend on the organization-defined resources.
  GUIDANCE
  tag nist: ['SA-23']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_23_odp_01 sa_23_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SA-23' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
