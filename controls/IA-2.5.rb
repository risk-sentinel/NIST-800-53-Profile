control 'IA-2 (5)' do
  impact 0.5
  title 'Individual Authentication with Group Authentication'
  desc <<~DESC
    When shared accounts or authenticators are employed, require users to be individually authenticated before granting access to the shared accounts or resources.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-02(05) users are required to be individually authenticated before granting access to the shared accounts or resources when shared accounts or authenticators are employed.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing user identification and authentication; system design documentation; system configuration settings and associated documentation; system audit records; list of system accounts; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with account management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing an authentication capability for group accounts
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Individual authentication prior to shared group authentication mitigates the risk of using group accounts or authenticators.
  GUIDANCE
  tag nist: ['IA-2 (5)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{HIGH}
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control IA-2 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
