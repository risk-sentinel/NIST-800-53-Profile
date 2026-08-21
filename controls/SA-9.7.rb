control 'SA-9 (7)' do
  impact 0.5
  title 'Organization-controlled Integrity Checking'
  desc <<~DESC
    Provide the capability to check the integrity of information while it resides in the external system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-09(07) the capability is provided to check the integrity of information while it resides in the external system.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing external system services; acquisition contracts for the system, system component, or system service; solicitation documentation; acquisition documentation; service level agreements; procedures addressing organization-controlled integrity checking; information/data and/or system services; organizational security requirements or conditions for external providers; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organization personnel with integrity checking responsibilities; external providers of system services; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for integrity checking; mechanisms for supporting and implementing integrity checking of information in external systems
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Storage of organizational information in an external system could limit visibility into the security status of its data. The ability of the organization to verify and validate the integrity of its stored data without transferring it out of the external system provides such visibility.
  GUIDANCE
  tag nist: ['SA-9 (7)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-9 (7)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
