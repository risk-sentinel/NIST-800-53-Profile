control 'IA-05(02)(a)(01)' do
  impact 0.5
  title "authorized access to the corresponding private key is enforced for public key-based authentication;"
  desc <<~DESC
    (a) For public key-based authentication:
      (1) Enforce authorized access to the corresponding private key; and
      (2) Map the authenticated identity to the account of the individual or group; and
    (b) When public key infrastructure (PKI) is used:
      (1) Validate certificates by constructing and verifying a certification path to an accepted trust anchor, including checking certificate status information; and
      (2) Implement a local cache of revocation data to support path discovery and validation.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      authorized access to the corresponding private key is enforced for public key-based authentication;

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing authenticator management; system security plan; system design documentation; system configuration settings and associated documentation; PKI certification validation records; PKI certification revocation lists; other relevant documents or records
      INTERVIEW: Organizational personnel with PKI-based, authenticator management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing PKI-based, authenticator management capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Public key cryptography is a valid authentication mechanism for individuals, machines, and devices. For PKI solutions, status information for certification paths includes certificate revocation lists or certificate status protocol responses. For PIV cards, certificate validation involves the construction and verification of a certification path to the Common Policy Root trust anchor, which includes certificate policy processing. Implementing a local cache of revocation data to support path discovery and validation also supports system availability in situations where organizations are unable to access revocation information via the network.
  GUIDANCE
  tag nist: ['IA-5 (2)']
  tag control: 'IA-5 (2)'
  tag objective: 'IA-05(02)(a)(01)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ia_5_2: true

  describe 'NIST SP 800-53A Rev 5 objective IA-05(02)(a)(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
