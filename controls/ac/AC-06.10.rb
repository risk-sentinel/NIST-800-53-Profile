control 'AC-06(10)' do
  impact 0.5
  title "non-privileged users are prevented from executing privileged functions."
  desc <<~DESC
    Prevent non-privileged users from executing privileged functions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      non-privileged users are prevented from executing privileged functions.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing least privilege; system design documentation; system configuration settings and associated documentation; list of privileged functions and associated user account assignments; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for defining least privileges necessary to accomplish specified tasks; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing least privilege functions for non-privileged users
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Privileged functions include disabling, circumventing, or altering implemented security or privacy controls, establishing system accounts, performing system integrity checks, and administering cryptographic key management activities. Non-privileged users are individuals who do not possess appropriate authorizations. Privileged functions that require protection from non-privileged users include circumventing intrusion detection and prevention mechanisms or malicious code protection mechanisms. Preventing non-privileged users from executing privileged functions is enforced by [AC-3](#ac-3).
  GUIDANCE
  tag nist: ['AC-6 (10)']
  tag control: 'AC-6 (10)'
  tag objective: 'AC-06(10)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_6_10: true

  describe 'NIST SP 800-53A Rev 5 objective AC-06(10)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
