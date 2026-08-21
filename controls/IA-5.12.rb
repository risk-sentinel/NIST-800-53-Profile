control 'IA-5 (12)' do
  impact 0.5
  title 'Biometric Authentication Performance'
  desc <<~DESC
    For biometric-based authentication, employ mechanisms that satisfy the following biometric quality requirements #{input('ia_05_12_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-05(12) mechanisms that satisfy #{input('ia_05_12_odp')} are employed for biometric-based authentication.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing authenticator management; system security plan; system design documentation; mechanisms employing biometric-based authentication for the system; list of biometric quality requirements; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with authenticator management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing biometric-based authenticator management capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Unlike password-based authentication, which provides exact matches of user-input passwords to stored passwords, biometric authentication does not provide exact matches. Depending on the type of biometric and the type of collection mechanism, there is likely to be some divergence from the presented biometric and the stored biometric that serves as the basis for comparison. Matching performance is the rate at which a biometric algorithm correctly results in a match for a genuine user and rejects other users. Biometric performance requirements include the match rate, which reflects the accuracy of the biometric matching algorithm used by a system.
  GUIDANCE
  tag nist: ['IA-5 (12)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag odp: %w{ia_05_12_odp}

  describe 'NIST SP 800-53 Rev 5 control IA-5 (12)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
