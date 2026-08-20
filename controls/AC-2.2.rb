control 'AC-2 (2)' do
  impact 0.5
  title 'Automated Temporary and Emergency Account Management'
  desc <<~DESC
    Automatically #{input('ac_02_02_odp_01')} temporary and emergency accounts after #{input('ac_02_02_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-02(02) temporary and emergency accounts are automatically #{input('ac_02_02_odp_01')} after #{input('ac_02_02_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures for addressing account management; system design documentation; system configuration settings and associated documentation; system-generated list of temporary accounts removed and/or disabled; system-generated list of emergency accounts removed and/or disabled; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security with information security responsibilities; system developers
      TEST: Automated mechanisms for implementing account management functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Management of temporary and emergency accounts includes the removal or disabling of such accounts automatically after a predefined time period rather than at the convenience of the system administrator. Automatic removal or disabling of accounts provides a more consistent implementation.
  GUIDANCE
  tag nist: ['AC-2 (2)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ac_02_02_odp_01 ac_02_02_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-2 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
