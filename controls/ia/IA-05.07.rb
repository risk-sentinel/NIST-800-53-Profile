control 'IA-05(07)' do
  impact 0.5
  title "unencrypted static authenticators are not embedded in applications or other forms of static storage."
  desc <<~DESC
    Ensure that unencrypted static authenticators are not embedded in applications or other forms of static storage.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      unencrypted static authenticators are not embedded in applications or other forms of static storage.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing authenticator management; system design documentation; system configuration settings and associated documentation; logical access scripts; application code reviews for detecting unencrypted static authenticators; other relevant documents or records
      INTERVIEW: Organizational personnel with authenticator management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing authenticator management capability; mechanisms implementing authentication in applications
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In addition to applications, other forms of static storage include access scripts and function keys. Organizations exercise caution when determining whether embedded or stored authenticators are in encrypted or unencrypted form. If authenticators are used in the manner stored, then those representations are considered unencrypted authenticators.
  GUIDANCE
  tag nist: ['IA-5 (7)']
  tag control: 'IA-5 (7)'
  tag objective: 'IA-05(07)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_5_7: true

  describe 'NIST SP 800-53A Rev 5 objective IA-05(07)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
