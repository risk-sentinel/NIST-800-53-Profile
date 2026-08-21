control 'IA-13[03]' do
  impact 0.5
  title "authorization servers are employed to manage user, device, and non-person entity (NPE) identities, attributes and access rights supporting authentication decisions in accordance with #{input('ia_13_odp_02')} using #{input('ia_13_odp_02')};"
  desc <<~DESC
    Employ identity providers and authorization servers to manage user, device, and non-person entity (NPE) identities, attributes, and access rights supporting authentication and authorization decisions in accordance with #{input('ia_13_odp_01')} using #{input('ia_13_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      authorization servers are employed to manage user, device, and non-person entity (NPE) identities, attributes and access rights supporting authentication decisions in accordance with #{input('ia_13_odp_02')} using #{input('ia_13_odp_02')};

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy;; procedures addressing user and device identification and authentication;; system security plan;; system design documentation;; system configuration settings and associated documentation;; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities;; organizational personnel with information security responsibilities;; system/network administrators;; organizational personnel with account management responsibilities;; system developers
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities and access rights
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Identity providers, both internal and external to the organization, manage the user, device, and NPE authenticators and issue statements, often called identity assertions, attesting to identities of other systems or systems components. Authorization servers create and issue access tokens to identified and authenticated users and devices that can be used to gain access to system or information resources. For example, single sign-on (SSO) provides identity provider and authorization server functions. Authenticator management (to include credential management) is covered by IA-05.
  GUIDANCE
  tag nist: ['IA-13']
  tag control: 'IA-13'
  tag objective: 'IA-13[03]'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_13: true
  tag odp: %w{ia_13_odp_01 ia_13_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective IA-13[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
