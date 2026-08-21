control 'AC-2 (13)' do
  impact 0.5
  title 'Disable Accounts for High-risk Individuals'
  desc <<~DESC
    Disable accounts of individuals within #{input('ac_02_13_odp_01')} of discovery of #{input('ac_02_13_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-02(13) accounts of individuals are disabled within #{input('ac_02_13_odp_01')} of discovery of #{input('ac_02_13_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing account management; system design documentation; system configuration settings and associated documentation; system-generated list of disabled accounts; list of user activities posing significant organizational risk; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing account management functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Users who pose a significant security and/or privacy risk include individuals for whom reliable evidence indicates either the intention to use authorized access to systems to cause harm or through whom adversaries will cause harm. Such harm includes adverse impacts to organizational operations, organizational assets, individuals, other organizations, or the Nation. Close coordination among system administrators, legal staff, human resource managers, and authorizing officials is essential when disabling system accounts for high-risk individuals.
  GUIDANCE
  tag nist: ['AC-2 (13)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ac_02_13_odp_01 ac_02_13_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-2 (13)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
