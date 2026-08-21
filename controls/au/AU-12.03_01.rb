control 'AU-12(03)[01]' do
  impact 0.5
  title "the capability for #{input('au_12_03_odp_01')} to change the logging to be performed on #{input('au_12_03_odp_02')} based on #{input('au_12_03_odp_03')} within #{input('au_12_03_odp_04')} is provided;"
  desc <<~DESC
    Provide and implement the capability for #{input('au_12_03_odp_01')} to change the logging to be performed on #{input('au_12_03_odp_02')} based on #{input('au_12_03_odp_03')} within #{input('au_12_03_odp_04')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the capability for #{input('au_12_03_odp_01')} to change the logging to be performed on #{input('au_12_03_odp_02')} based on #{input('au_12_03_odp_03')} within #{input('au_12_03_odp_04')} is provided;

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing audit record generation; system design documentation; system configuration settings and associated documentation; system-generated list of individuals or roles authorized to change auditing to be performed; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit record generation responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing audit record generation capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Permitting authorized individuals to make changes to system logging enables organizations to extend or limit logging as necessary to meet organizational requirements. Logging that is limited to conserve system resources may be extended (either temporarily or permanently) to address certain threat situations. In addition, logging may be limited to a specific set of event types to facilitate audit reduction, analysis, and reporting. Organizations can establish time thresholds in which logging actions are changed (e.g., near real-time, within minutes, or within hours).
  GUIDANCE
  tag nist: ['AU-12 (3)']
  tag control: 'AU-12 (3)'
  tag objective: 'AU-12(03)[01]'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_au_12_3: true
  tag odp: %w{au_12_03_odp_01 au_12_03_odp_02 au_12_03_odp_03 au_12_03_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective AU-12(03)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
