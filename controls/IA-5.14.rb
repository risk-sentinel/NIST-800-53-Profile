control 'IA-5 (14)' do
  impact 0.5
  title 'Managing Content of PKI Trust Stores'
  desc <<~DESC
    For PKI-based authentication, employ an organization-wide methodology for managing the content of PKI trust stores installed across all platforms, including networks, operating systems, browsers, and applications.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-05(14) an organization-wide methodology for managing the content of PKI trust stores is employed across all platforms, including networks, operating systems, browsers, and applications for PKI-based authentication.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing authenticator management; system security plan; organizational methodology for managing content of PKI trust stores across installed all platforms; system design documentation; system configuration settings and associated documentation; enterprise security architecture documentation; enterprise architecture documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with authenticator management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing PKI-based authenticator management capability; mechanisms supporting and/or implementing the PKI trust store capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An organization-wide methodology for managing the content of PKI trust stores helps improve the accuracy and currency of PKI-based authentication credentials across the organization.
  GUIDANCE
  tag nist: ['IA-5 (14)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control IA-5 (14)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
