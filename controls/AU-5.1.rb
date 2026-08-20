control 'AU-5 (1)' do
  impact 0.5
  title 'Storage Capacity Warning'
  desc <<~DESC
    Provide a warning to #{input('au_05_01_odp_01')} within #{input('au_05_01_odp_02')} when allocated audit log storage volume reaches #{input('au_05_01_odp_03')} of repository maximum audit log storage capacity.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-05(01) a warning is provided to #{input('au_05_01_odp_01')} within #{input('au_05_01_odp_02')} when allocated audit log storage volume reaches #{input('au_05_01_odp_03')} of repository maximum audit log storage capacity.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing response to audit processing failures; system design documentation; system security plan; privacy system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing audit storage limit warnings
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may have multiple audit log storage repositories distributed across multiple system components with each repository having different storage volume capacities.
  GUIDANCE
  tag nist: ['AU-5 (1)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{au_05_01_odp_01 au_05_01_odp_02 au_05_01_odp_03}

  describe 'NIST SP 800-53 Rev 5 control AU-5 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
