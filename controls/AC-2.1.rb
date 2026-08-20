control 'AC-2 (1)' do
  impact 0.5
  title 'Automated System Account Management'
  desc <<~DESC
    Support the management of system accounts using #{input('ac_02_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-02(01) the management of system accounts is supported using #{input('ac_02_01_odp')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures for addressing account management; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security with information security responsibilities; system developers
      TEST: Automated mechanisms for implementing account management functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated system account management includes using automated mechanisms to create, enable, modify, disable, and remove accounts; notify account managers when an account is created, enabled, modified, disabled, or removed, or when users are terminated or transferred; monitor system account usage; and report atypical system account usage. Automated mechanisms can include internal system functions and email, telephonic, and text messaging notifications.
  GUIDANCE
  tag nist: ['AC-2 (1)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ac_02_01_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-2 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
