control 'SA-10 (3)' do
  impact 0.5
  title 'Hardware Integrity Verification'
  desc <<~DESC
    Require the developer of the system, system component, or system service to enable integrity verification of hardware components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-10(03) the developer of the system, system component, or system service is required to enable integrity verification of hardware components.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing system developer configuration management; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system developer configuration management plan; hardware integrity verification records; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with configuration management responsibilities; system developers; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for monitoring developer configuration management; mechanisms supporting and/or implementing the monitoring of developer configuration management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Hardware integrity verification allows organizations to detect unauthorized changes to hardware components using developer-provided tools, techniques, methods, and mechanisms. Organizations may verify the integrity of hardware components with hard-to-copy labels, verifiable serial numbers provided by developers, and by requiring the use of anti-tamper technologies. Delivered hardware components also include hardware and firmware updates to such components.
  GUIDANCE
  tag nist: ['SA-10 (3)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-10 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
