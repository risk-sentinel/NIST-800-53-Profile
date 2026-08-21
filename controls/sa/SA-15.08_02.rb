control 'SA-15(08)[02]' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to use vulnerability analyses from similar systems, components, or services to inform the current development process."
  desc <<~DESC
    Require the developer of the system, system component, or system service to use threat modeling and vulnerability analyses from similar systems, components, or services to inform the current development process.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to use vulnerability analyses from similar systems, components, or services to inform the current development process.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; supply chain risk management plan; procedures addressing development process, standards, and tools; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; threat modeling and vulnerability analyses from similar systems, system components, or system services; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system developer; organizational personnel with supply chain risk management responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Analysis of vulnerabilities found in similar software applications can inform potential design and implementation issues for systems under development. Similar systems or system components may exist within developer organizations. Vulnerability information is available from a variety of public and private sector sources, including the NIST National Vulnerability Database.
  GUIDANCE
  tag nist: ['SA-15 (8)']
  tag control: 'SA-15 (8)'
  tag objective: 'SA-15(08)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_15_8: true

  describe 'NIST SP 800-53A Rev 5 objective SA-15(08)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
