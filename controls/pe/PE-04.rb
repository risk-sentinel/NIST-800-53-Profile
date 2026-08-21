control 'PE-04' do
  impact 0.5
  title "physical access to #{input('pe_04_odp_01')} within organizational facilities is controlled using #{input('pe_04_odp_02')}."
  desc <<~DESC
    Control physical access to #{input('pe_04_odp_01')} within organizational facilities using #{input('pe_04_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      physical access to #{input('pe_04_odp_01')} within organizational facilities is controlled using #{input('pe_04_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing access control for transmission mediums; system design documentation; facility communications and wiring diagrams; list of physical security safeguards applied to system distribution and transmission lines; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for access control to distribution and transmission lines; mechanisms/security safeguards supporting and/or implementing access control to distribution and transmission lines
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security controls applied to system distribution and transmission lines prevent accidental damage, disruption, and physical tampering. Such controls may also be necessary to prevent eavesdropping or modification of unencrypted transmissions. Security controls used to control physical access to system distribution and transmission lines include disconnected or locked spare jacks, locked wiring closets, protection of cabling by conduit or cable trays, and wiretapping sensors.
  GUIDANCE
  tag nist: ['PE-4']
  tag control: 'PE-4'
  tag objective: 'PE-04'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_4: true
  tag odp: %w{pe_04_odp_01 pe_04_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PE-04' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
