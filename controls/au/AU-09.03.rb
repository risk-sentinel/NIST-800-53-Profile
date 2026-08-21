control 'AU-09(03)' do
  impact 0.5
  title "cryptographic mechanisms to protect the integrity of audit information and audit tools are implemented."
  desc <<~DESC
    Implement cryptographic mechanisms to protect the integrity of audit information and audit tools.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      cryptographic mechanisms to protect the integrity of audit information and audit tools are implemented.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; access control policy and procedures; procedures addressing protection of audit information; system design documentation; system hardware settings; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Cryptographic mechanisms protecting the integrity of audit information and tools
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Cryptographic mechanisms used for protecting the integrity of audit information include signed hash functions using asymmetric cryptography. This enables the distribution of the public key to verify the hash information while maintaining the confidentiality of the secret key used to generate the hash.
  GUIDANCE
  tag nist: ['AU-9 (3)']
  tag control: 'AU-9 (3)'
  tag objective: 'AU-09(03)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_au_9_3: true

  describe 'NIST SP 800-53A Rev 5 objective AU-09(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
