control 'AC-02(08)[04]' do
  impact 0.5
  title "#{input('ac_02_08_odp')} are deactivated dynamically."
  desc <<~DESC
    Create, activate, manage, and deactivate #{input('ac_02_08_odp')} dynamically.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_02_08_odp')} are deactivated dynamically.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing account management; system design documentation; system configuration settings and associated documentation; system-generated list of system accounts; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Automated mechanisms implementing account management functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Approaches for dynamically creating, activating, managing, and deactivating system accounts rely on automatically provisioning the accounts at runtime for entities that were previously unknown. Organizations plan for the dynamic management, creation, activation, and deactivation of system accounts by establishing trust relationships, business rules, and mechanisms with appropriate authorities to validate related authorizations and privileges.
  GUIDANCE
  tag nist: ['AC-2 (8)']
  tag control: 'AC-2 (8)'
  tag objective: 'AC-02(08)[04]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_2_8: true
  tag odp: %w{ac_02_08_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-02(08)[04]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
