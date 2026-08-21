control 'SR-04[03]' do
  impact 0.5
  title "valid provenance is maintained for #{input('sr_04_odp')}."
  desc <<~DESC
    Document, monitor, and maintain valid provenance of the following systems, system components, and associated data: #{input('sr_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      valid provenance is maintained for #{input('sr_04_odp')}.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy; supply chain risk management procedures; supply chain risk management plan; documentation of critical systems, critical system components, and associated data; documentation showing the history of ownership, custody, and location of and changes to critical systems or critical system components; system architecture; inter-organizational agreements and procedures; contracts; system security plan; privacy plan; personally identifiable information processing policy; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for identifying the provenance of critical systems and critical system components; mechanisms used to document, monitor, or maintain provenance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Every system and system component has a point of origin and may be changed throughout its existence. Provenance is the chronology of the origin, development, ownership, location, and changes to a system or system component and associated data. It may also include personnel and processes used to interact with or make modifications to the system, component, or associated data. Organizations consider developing procedures (see [SR-1](#sr-1) ) for allocating responsibilities for the creation, maintenance, and monitoring of provenance for systems and system components; transferring provenance documentation and responsibility between organizations; and preventing and monitoring for unauthorized changes to the provenance records. Organizations have methods to document, monitor, and maintain valid provenance baselines for systems, system components, and related data. These actions help track, assess, and document any changes to the provenance, including changes in supply chain elements or configuration, and help ensure non-repudiation of provenance information and the provenance change records. Provenance considerations are addressed throughout the system development life cycle and incorporated into contracts and other arrangements, as appropriate.
  GUIDANCE
  tag nist: ['SR-4']
  tag control: 'SR-4'
  tag objective: 'SR-04[03]'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{}
  tag control_sr_4: true
  tag odp: %w{sr_04_odp}

  describe 'NIST SP 800-53A Rev 5 objective SR-04[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
