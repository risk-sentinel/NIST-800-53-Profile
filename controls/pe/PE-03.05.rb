control 'PE-03(05)' do
  impact 0.5
  title "#{input('pe_03_05_odp_01')} are employed to #{input('pe_03_05_odp_02')} physical tampering or alteration of #{input('pe_03_05_odp_03')} within the system."
  desc <<~DESC
    Employ #{input('pe_03_05_odp_01')} to #{input('pe_03_05_odp_02')} physical tampering or alteration of #{input('pe_03_05_odp_03')} within the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('pe_03_05_odp_01')} are employed to #{input('pe_03_05_odp_02')} physical tampering or alteration of #{input('pe_03_05_odp_03')} within the system.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access control; list of security safeguards to detect/prevent physical tampering or alteration of system hardware components; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes to detect/prevent physical tampering or alteration of system hardware components; mechanisms/security safeguards supporting and/or implementing the detection/prevention of physical tampering/alternation of system hardware components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations can implement tamper detection and prevention at selected hardware components or implement tamper detection at some components and tamper prevention at other components. Detection and prevention activities can employ many types of anti-tamper technologies, including tamper-detection seals and anti-tamper coatings. Anti-tamper programs help to detect hardware alterations through counterfeiting and other supply chain-related risks.
  GUIDANCE
  tag nist: ['PE-3 (5)']
  tag control: 'PE-3 (5)'
  tag objective: 'PE-03(05)'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_3_5: true
  tag odp: %w{pe_03_05_odp_01 pe_03_05_odp_02 pe_03_05_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective PE-03(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
