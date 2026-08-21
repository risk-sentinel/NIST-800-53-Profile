control 'SA-15(02)[01]' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to select and employ security tracking tools for use during the development process;"
  desc <<~DESC
    Require the developer of the system, system component, or system service to select and employ security and privacy tracking tools for use during the development process.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to select and employ security tracking tools for use during the development process;

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing development process, standards, and tools; procedures addressing the integration of security and privacy requirements into the acquisition process; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; documentation of the selection of security and privacy tracking tools; evidence of employing security and privacy tracking tools; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system developer; organizational personnel with privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System development teams select and deploy security and privacy tracking tools, including vulnerability or work item tracking systems that facilitate assignment, sorting, filtering, and tracking of completed work items or tasks associated with development processes.
  GUIDANCE
  tag nist: ['SA-15 (2)']
  tag control: 'SA-15 (2)'
  tag objective: 'SA-15(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_15_2: true

  describe 'NIST SP 800-53A Rev 5 objective SA-15(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
