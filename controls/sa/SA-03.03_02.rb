control 'SA-03(03)[02]' do
  impact 0.5
  title "a technology refresh schedule is implemented for the system throughout the system development life cycle."
  desc <<~DESC
    Plan for and implement a technology refresh schedule for the system throughout the system development life cycle.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a technology refresh schedule is implemented for the system throughout the system development life cycle.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing technology refresh planning and implementation; system development life cycle documentation; technology refresh schedule; security risk assessment documentation; privacy impact assessment; privacy risk assessment documentation; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; organizational personnel with system life cycle development responsibilities
      TEST: Organizational processes for defining and documenting the system development life cycle; organizational processes for identifying system development life cycle roles and responsibilities; organizational processes for integrating security and privacy risk management into the system development life cycle; mechanisms supporting and/or implementing the system development life cycle
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Technology refresh planning may encompass hardware, software, firmware, processes, personnel skill sets, suppliers, service providers, and facilities. The use of obsolete or nearing obsolete technology may increase the security and privacy risks associated with unsupported components, counterfeit or repurposed components, components unable to implement security or privacy requirements, slow or inoperable components, components from untrusted sources, inadvertent personnel error, or increased complexity. Technology refreshes typically occur during the operations and maintenance stage of the system development life cycle.
  GUIDANCE
  tag nist: ['SA-3 (3)']
  tag control: 'SA-3 (3)'
  tag objective: 'SA-03(03)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_3_3: true

  describe 'NIST SP 800-53A Rev 5 objective SA-03(03)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
