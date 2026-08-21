control 'PE-3 (4)' do
  impact 0.5
  title 'Lockable Casings'
  desc <<~DESC
    Use lockable physical casings to protect #{input('pe_03_04_odp')} from unauthorized physical access.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-03(04) lockable physical casings are used to protect #{input('pe_03_04_odp')} from unauthorized access.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access control; list of system components requiring protection through lockable physical casings; lockable physical casings; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities
      TEST: Lockable physical casings
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The greatest risk from the use of portable devices—such as smart phones, tablets, and notebook computers—is theft. Organizations can employ lockable, physical casings to reduce or eliminate the risk of equipment theft. Such casings come in a variety of sizes, from units that protect a single notebook computer to full cabinets that can protect multiple servers, computers, and peripherals. Lockable physical casings can be used in conjunction with cable locks or lockdown plates to prevent the theft of the locked casing containing the computer equipment.
  GUIDANCE
  tag nist: ['PE-3 (4)']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag odp: %w{pe_03_04_odp}

  describe 'NIST SP 800-53 Rev 5 control PE-3 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
