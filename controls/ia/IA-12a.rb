control 'IA-12a.' do
  impact 0.5
  title "users who require accounts for logical access to systems based on appropriate identity assurance level requirements as specified in applicable standards and guidelines are identity proofed;"
  desc <<~DESC
    a. Identity proof users that require accounts for logical access to systems based on appropriate identity assurance level requirements as specified in applicable standards and guidelines;
    b. Resolve user identities to a unique individual; and
    c. Collect, validate, and verify identity evidence.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      users who require accounts for logical access to systems based on appropriate identity assurance level requirements as specified in applicable standards and guidelines are identity proofed;

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identity proofing; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security and privacy responsibilities; legal counsel; system/network administrators; system developers; organizational personnel with identification and authentication responsibilities
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Identity proofing is the process of collecting, validating, and verifying a user’s identity information for the purposes of establishing credentials for accessing a system. Identity proofing is intended to mitigate threats to the registration of users and the establishment of their accounts. Standards and guidelines specifying identity assurance levels for identity proofing include [SP 800-63-3](#737513fa-6758-403f-831d-5ddab5e23cb3) and [SP 800-63A](#9099ed2c-922a-493d-bcb4-d896192243ff) . Organizations may be subject to laws, executive orders, directives, regulations, or policies that address the collection of identity evidence. Organizational personnel consult with the senior agency official for privacy and legal counsel regarding such requirements.
  GUIDANCE
  tag nist: ['IA-12']
  tag control: 'IA-12'
  tag objective: 'IA-12a.'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ia_12: true

  describe 'NIST SP 800-53A Rev 5 objective IA-12a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
