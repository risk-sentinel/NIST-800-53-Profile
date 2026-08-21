control 'IA-13(02)[03]' do
  impact 0.5
  title "the integrity of identity assertions is verified before granting access to system and information resources;"
  desc <<~DESC
    The source and integrity of identity assertions and access tokens are verified before granting access to system and information resources.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the integrity of identity assertions is verified before granting access to system and information resources;

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy;; system security plan; system design documentation;; system configuration settings and associated documentation;; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities;; organizational personnel with information security responsibilities;; system/ network administrators;; organizational personnel with account management responsibilities;; system developers
      TEST: Identity provider mechanisms supporting and/or implementing identification and authentication capabilities and access rights
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    This includes verification of digital signatures protecting identity assertions and access tokens, as well as included metadata. Metadata includes information about the access request such as information unique to user, system or information resource being accessed, or the transaction itself such as time. Protected system and information resources could include connected networks, applications, and APIs.
  GUIDANCE
  tag nist: ['IA-13 (2)']
  tag control: 'IA-13 (2)'
  tag objective: 'IA-13(02)[03]'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_13_2: true

  describe 'NIST SP 800-53A Rev 5 objective IA-13(02)[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
