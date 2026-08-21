control 'IA-13(01)[03]' do
  impact 0.5
  title "cryptographic keys that protect access tokens are protected from disclosure; and"
  desc <<~DESC
    Cryptographic keys that protect access tokens are generated, managed, and protected from disclosure and misuse.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      cryptographic keys that protect access tokens are protected from disclosure; and

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy;; procedures addressing cryptographic key establishment and management;; system design documentation;; cryptographic mechanisms;; system configuration settings and associated documentation;; system security plan;; other relevant documents or records
      INTERVIEW: System/network administrators;; organizational personnel with information security responsibilities;; organizational personnel with responsibilities for cryptographic key establishment and/or management
      TEST: Organizational processes for cryptographic key management;; cryptographic modules generating, storing, and using cryptographic keys
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Identity assertions and access tokens are typically digitally signed. The private keys used to sign these assertions and tokens are protected commensurate with the impact of the system and information resources that can be accessed.
  GUIDANCE
  tag nist: ['IA-13 (1)']
  tag control: 'IA-13 (1)'
  tag objective: 'IA-13(01)[03]'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_13_1: true

  describe 'NIST SP 800-53A Rev 5 objective IA-13(01)[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
