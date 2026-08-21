control 'IA-02(08)' do
  impact 0.5
  title "replay-resistant authentication mechanisms for access to #{input('ia_02_08_odp')} are implemented."
  desc <<~DESC
    Implement replay-resistant authentication mechanisms for access to #{input('ia_02_08_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      replay-resistant authentication mechanisms for access to #{input('ia_02_08_odp')} are implemented.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing user identification and authentication; system design documentation; system configuration settings and associated documentation; system audit records; list of privileged system accounts; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with account management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities; Mechanisms supporting and/or implementing replay-resistant authentication mechanisms
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Authentication processes resist replay attacks if it is impractical to achieve successful authentications by replaying previous authentication messages. Replay-resistant techniques include protocols that use nonces or challenges such as time synchronous or cryptographic authenticators.
  GUIDANCE
  tag nist: ['IA-2 (8)']
  tag control: 'IA-2 (8)'
  tag objective: 'IA-02(08)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ia_2_8: true
  tag odp: %w{ia_02_08_odp}

  describe 'NIST SP 800-53A Rev 5 objective IA-02(08)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
