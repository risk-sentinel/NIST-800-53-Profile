control 'SA-03(01)' do
  impact 0.5
  title "system pre-production environments are protected commensurate with risk throughout the system development life cycle for the system, system component, or system service."
  desc <<~DESC
    Protect system preproduction environments commensurate with risk throughout the system development life cycle for the system, system component, or system service.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system pre-production environments are protected commensurate with risk throughout the system development life cycle for the system, system component, or system service.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the integration of security and supply chain risk management into the system development life cycle process; system development life cycle documentation; procedures addressing program protection planning; criticality analysis results; security and supply chain risk management strategy/program documentation; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with security and system life cycle development responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for defining and documenting the system development life cycle; organizational processes for identifying system development life cycle roles and responsibilities; organizational process for integrating security risk management into the system development life cycle; mechanisms supporting and/or implementing the system development life cycle
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The preproduction environment includes development, test, and integration environments. The program protection planning processes established by the Department of Defense are examples of managing the preproduction environment for defense contractors. Criticality analysis and the application of controls on developers also contribute to a more secure system development environment.
  GUIDANCE
  tag nist: ['SA-3 (1)']
  tag control: 'SA-3 (1)'
  tag objective: 'SA-03(01)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_3_1: true

  describe 'NIST SP 800-53A Rev 5 objective SA-03(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
