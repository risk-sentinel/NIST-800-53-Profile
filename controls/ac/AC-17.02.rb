control 'AC-17(02)' do
  impact 0.5
  title "cryptographic mechanisms are implemented to protect the confidentiality and integrity of remote access sessions."
  desc <<~DESC
    Implement cryptographic mechanisms to protect the confidentiality and integrity of remote access sessions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      cryptographic mechanisms are implemented to protect the confidentiality and integrity of remote access sessions.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing remote access to the system; system design documentation; system configuration settings and associated documentation; cryptographic mechanisms and associated configuration documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Cryptographic mechanisms protecting confidentiality and integrity of remote access sessions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Virtual private networks can be used to protect the confidentiality and integrity of remote access sessions. Transport Layer Security (TLS) is an example of a cryptographic protocol that provides end-to-end communications security over networks and is used for Internet communications and online transactions.
  GUIDANCE
  tag nist: ['AC-17 (2)']
  tag control: 'AC-17 (2)'
  tag objective: 'AC-17(02)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_17_2: true

  describe 'NIST SP 800-53A Rev 5 objective AC-17(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
