control 'IA-05(10)' do
  impact 0.5
  title "identities and authenticators are dynamically bound using #{input('ia_05_10_odp')}."
  desc <<~DESC
    Bind identities and authenticators dynamically using the following rules: #{input('ia_05_10_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      identities and authenticators are dynamically bound using #{input('ia_05_10_odp')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identifier management; system security plan; system design documentation; automated mechanisms providing dynamic binding of identifiers and authenticators; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with identifier management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Automated mechanisms implementing identifier management capability; automated mechanisms implementing dynamic binding of identities and authenticators
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Authentication requires some form of binding between an identity and the authenticator that is used to confirm the identity. In conventional approaches, binding is established by pre-provisioning both the identity and the authenticator to the system. For example, the binding between a username (i.e., identity) and a password (i.e., authenticator) is accomplished by provisioning the identity and authenticator as a pair in the system. New authentication techniques allow the binding between the identity and the authenticator to be implemented external to a system. For example, with smartcard credentials, the identity and authenticator are bound together on the smartcard. Using these credentials, systems can authenticate identities that have not been pre-provisioned, dynamically provisioning the identity after authentication. In these situations, organizations can anticipate the dynamic provisioning of identities. Pre-established trust relationships and mechanisms with appropriate authorities to validate identities and related credentials are essential.
  GUIDANCE
  tag nist: ['IA-5 (10)']
  tag control: 'IA-5 (10)'
  tag objective: 'IA-05(10)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_5_10: true
  tag odp: %w{ia_05_10_odp}

  describe 'NIST SP 800-53A Rev 5 objective IA-05(10)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
