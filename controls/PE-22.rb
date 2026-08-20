control 'PE-22' do
  impact 0.5
  title 'Component Marking'
  desc <<~DESC
    Mark #{input('pe_22_odp')} indicating the impact level or classification level of the information permitted to be processed, stored, or transmitted by the hardware component.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-22 #{input('pe_22_odp')} are marked indicating the impact level or classification level of the information permitted to be processed, stored, or transmitted by the hardware component.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing component marking; list of component marking security attributes; component inventory; information types and their impact/classification level; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with component marking responsibilities; organizational personnel with component inventory responsibilities; organizational personnel with information categorization/classification responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for component marking; automated mechanisms supporting and/or implementing component marking
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Hardware components that may require marking include input and output devices. Input devices include desktop and notebook computers, keyboards, tablets, and smart phones. Output devices include printers, monitors/video displays, facsimile machines, scanners, copiers, and audio devices. Permissions controlling output to the output devices are addressed in [AC-3](#ac-3) or [AC-4](#ac-4) . Components are marked to indicate the impact level or classification level of the system to which the devices are connected, or the impact level or classification level of the information permitted to be output. Security marking refers to the use of human-readable security attributes. Security labeling refers to the use of security attributes for internal system data structures. Security marking is generally not required for hardware components that process, store, or transmit information determined by organizations to be in the public domain or to be publicly releasable. However, organizations may require markings for hardware components that process, store, or transmit public information in order to indicate that such information is publicly releasable. Marking of system hardware components reflects applicable laws, executive orders, directives, policies, regulations, and standards.
  GUIDANCE
  tag nist: ['PE-22']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag odp: %w{pe_22_odp}

  describe 'NIST SP 800-53 Rev 5 control PE-22' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
