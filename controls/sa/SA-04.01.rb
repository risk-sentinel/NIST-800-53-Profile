control 'SA-04(01)' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to provide a description of the functional properties of the controls to be implemented."
  desc <<~DESC
    Require the developer of the system, system component, or system service to provide a description of the functional properties of the controls to be implemented.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to provide a description of the functional properties of the controls to be implemented.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing the integration of security and privacy requirements, descriptions, and criteria into the acquisition process; solicitation documents; acquisition documentation; acquisition contracts for the system, system component, or system services; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Organizational processes for determining system security functional requirements; organizational processes for developing acquisition contracts; mechanisms supporting and/or implementing acquisitions and the inclusion of security and privacy requirements in contracts
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Functional properties of security and privacy controls describe the functionality (i.e., security or privacy capability, functions, or mechanisms) visible at the interfaces of the controls and specifically exclude functionality and data structures internal to the operation of the controls.
  GUIDANCE
  tag nist: ['SA-4 (1)']
  tag control: 'SA-4 (1)'
  tag objective: 'SA-04(01)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sa_4_1: true

  describe 'NIST SP 800-53A Rev 5 objective SA-04(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
