control 'IA-13(03)(b)[01]' do
  impact 0.5
  title "assertions are issued in accordance with #{input('ia_13_odp_01')};"
  desc <<~DESC
    In accordance with #{input('ia_13_odp_01')}, assertions and access tokens are:
      (a) generated;
      (b) issued;
      (c) refreshed;
      (d) revoked;
      (e) time-restricted; and
      (f) audience-restricted.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      assertions are issued in accordance with #{input('ia_13_odp_01')};

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy;; access control policy;; procedures for assertion and token management;; system design documentation;; system configuration settings and associated documentation;; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities;; organizational personnel with information security responsibilities;; system/ network administrators;; organizational personnel with account management responsibilities;; system developers
      TEST: Mechanisms and software supporting and/or implementing token generation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An access token is a piece of data that represents the authorization granted to a user or NPE to access specific systems or information resources. Access tokens enable controlled access to services and resources. Properly managing the lifecycle of access tokens, including their issuance, validation, and revocation, is crucial to maintaining confidentiality of data and systems. Restricting token validity to a specific audience, e.g., an application or security domain, and restricting token validity lifetimes are important practices. Access tokens are revoked or invalidated if they are compromised, lost, or are no longer needed to mitigate the risks associated with stolen or misused tokens.
  GUIDANCE
  tag nist: ['IA-13 (3)']
  tag control: 'IA-13 (3)'
  tag objective: 'IA-13(03)(b)[01]'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_13_3: true
  tag odp: %w{ia_13_odp_01}

  describe 'NIST SP 800-53A Rev 5 objective IA-13(03)(b)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
