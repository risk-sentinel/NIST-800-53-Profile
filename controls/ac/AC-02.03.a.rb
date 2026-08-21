control 'AC-02(03)(a)' do
  impact 0.5
  title "accounts are disabled within #{input('ac_02_03_odp_01')} when the accounts have expired;"
  desc <<~DESC
    Disable accounts within #{input('ac_02_03_odp_01')} when the accounts:
      (a) Have expired;
      (b) Are no longer associated with a user or individual;
      (c) Are in violation of organizational policy; or
      (d) Have been inactive for #{input('ac_02_03_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      accounts are disabled within #{input('ac_02_03_odp_01')} when the accounts have expired;

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures for addressing account management; system security plan; system design documentation; system configuration settings and associated documentation; system-generated list of accounts removed; system-generated list of emergency accounts disabled; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms for implementing account management functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Disabling expired, inactive, or otherwise anomalous accounts supports the concepts of least privilege and least functionality which reduce the attack surface of the system.
  GUIDANCE
  tag nist: ['AC-2 (3)']
  tag control: 'AC-2 (3)'
  tag objective: 'AC-02(03)(a)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_2_3: true
  tag odp: %w{ac_02_03_odp_01 ac_02_03_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AC-02(03)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
