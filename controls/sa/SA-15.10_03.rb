control 'SA-15(10)[03]' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to test an incident response plan."
  desc <<~DESC
    Require the developer of the system, system component, or system service to provide, implement, and test an incident response plan.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to test an incident response plan.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing incident response, standards, and tools; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system components or services; acquisition documentation; solicitation documentation; service level agreements; developer incident response plan; system security plan; privacy plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system developer; organizational personnel with supply chain risk management responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The incident response plan provided by developers may provide information not readily available to organizations and be incorporated into organizational incident response plans. Developer information may also be extremely helpful, such as when organizations respond to vulnerabilities in commercial off-the-shelf products.
  GUIDANCE
  tag nist: ['SA-15 (10)']
  tag control: 'SA-15 (10)'
  tag objective: 'SA-15(10)[03]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_15_10: true

  describe 'NIST SP 800-53A Rev 5 objective SA-15(10)[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
