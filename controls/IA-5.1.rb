control 'IA-5 (1)' do
  impact 0.5
  title 'Password-based Authentication'
  desc <<~DESC
    For password-based authentication:
      (a) Maintain a list of commonly-used, expected, or compromised passwords and update the list #{input('ia_05_01_odp_01')} and when organizational passwords are suspected to have been compromised directly or indirectly;
      (b) Verify, when users create or update passwords, that the passwords are not found on the list of commonly-used, expected, or compromised passwords in IA-5(1)(a);
      (c) Transmit passwords only over cryptographically-protected channels;
      (d) Store passwords using an approved salted key derivation function, preferably using a keyed hash;
      (e) Require immediate selection of a new password upon account recovery;
      (f) Allow user selection of long passwords and passphrases, including spaces and all printable characters;
      (g) Employ automated tools to assist the user in selecting strong password authenticators; and
      (h) Enforce the following composition and complexity rules: #{input('ia_05_01_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-05(01)(a) for password-based authentication, a list of commonly used, expected, or compromised passwords is maintained and updated #{input('ia_05_01_odp_01')} and when organizational passwords are suspected to have been compromised directly or indirectly;
      IA-05(01)(b) for password-based authentication when passwords are created or updated by users, the passwords are verified not to be found on the list of commonly used, expected, or compromised passwords in IA-05(01)(a);
      IA-05(01)(c) for password-based authentication, passwords are only transmitted over cryptographically protected channels;
      IA-05(01)(d) for password-based authentication, passwords are stored using an approved salted key derivation function, preferably using a keyed hash;
      IA-05(01)(e) for password-based authentication, immediate selection of a new password is required upon account recovery;
      IA-05(01)(f) for password-based authentication, user selection of long passwords and passphrases is allowed, including spaces and all printable characters;
      IA-05(01)(g) for password-based authentication, automated tools are employed to assist the user in selecting strong password authenticators;
      IA-05(01)(h) for password-based authentication, #{input('ia_05_01_odp_02')} are enforced.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; password policy; procedures addressing authenticator management; system security plan; system design documentation; system configuration settings and associated documentation; password configurations and associated documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with authenticator management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing password-based authenticator management capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Password-based authentication applies to passwords regardless of whether they are used in single-factor or multi-factor authentication. Long passwords or passphrases are preferable over shorter passwords. Enforced composition rules provide marginal security benefits while decreasing usability. However, organizations may choose to establish certain rules for password generation (e.g., minimum character length for long passwords) under certain circumstances and can enforce this requirement in IA-5(1)(h). Account recovery can occur, for example, in situations when a password is forgotten. Cryptographically protected passwords include salted one-way cryptographic hashes of passwords. The list of commonly used, compromised, or expected passwords includes passwords obtained from previous breach corpuses, dictionary words, and repetitive or sequential characters. The list includes context-specific words, such as the name of the service, username, and derivatives thereof.
  GUIDANCE
  tag nist: ['IA-5 (1)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ia_05_01_odp_01 ia_05_01_odp_02}

  describe 'NIST SP 800-53 Rev 5 control IA-5 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
