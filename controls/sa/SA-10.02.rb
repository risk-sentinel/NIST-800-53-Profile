control 'SA-10(02)' do
  impact 0.5
  title "an alternate configuration management process has been provided using organizational personnel in the absence of a dedicated developer configuration management team."
  desc <<~DESC
    Provide an alternate configuration management process using organizational personnel in the absence of a dedicated developer configuration management team.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an alternate configuration management process has been provided using organizational personnel in the absence of a dedicated developer configuration management team.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; configuration management policy; configuration management plan; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system developer configuration management plan; security impact analyses; privacy impact analyses; privacy impact assessment; privacy risk assessment documentation; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with configuration management responsibilities; system developers
      TEST: Organizational processes for monitoring developer configuration management; mechanisms supporting and/or implementing the monitoring of developer configuration management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Alternate configuration management processes may be required when organizations use commercial off-the-shelf information technology products. Alternate configuration management processes include organizational personnel who review and approve proposed changes to systems, system components, and system services and conduct security and privacy impact analyses prior to the implementation of changes to systems, components, or services.
  GUIDANCE
  tag nist: ['SA-10 (2)']
  tag control: 'SA-10 (2)'
  tag objective: 'SA-10(02)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_10_2: true

  describe 'NIST SP 800-53A Rev 5 objective SA-10(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
