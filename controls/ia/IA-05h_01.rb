control 'IA-05h.[01]' do
  impact 0.5
  title "system authenticators are managed through the requirement for individuals to take specific controls to protect authenticators;"
  desc <<~DESC
    Manage system authenticators by:
      a. Verifying, as part of the initial authenticator distribution, the identity of the individual, group, role, service, or device receiving the authenticator;
      b. Establishing initial authenticator content for any authenticators issued by the organization;
      c. Ensuring that authenticators have sufficient strength of mechanism for their intended use;
      d. Establishing and implementing administrative procedures for initial authenticator distribution, for lost or compromised or damaged authenticators, and for revoking authenticators;
      e. Changing default authenticators prior to first use;
      f. Changing or refreshing authenticators #{input('ia_05_odp_01')} or when #{input('ia_05_odp_02')} occur;
      g. Protecting authenticator content from unauthorized disclosure and modification;
      h. Requiring individuals to take, and having devices implement, specific controls to protect authenticators; and
      i. Changing authenticators for group or role accounts when membership to those accounts changes.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system authenticators are managed through the requirement for individuals to take specific controls to protect authenticators;

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; addressing authenticator management; system design documentation; system configuration settings and associated documentation; list of system authenticator types; change control records associated with managing system authenticators; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with authenticator management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms supporting and/or implementing authenticator management capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Authenticators include passwords, cryptographic devices, biometrics, certificates, one-time password devices, and ID badges. Device authenticators include certificates and passwords. Initial authenticator content is the actual content of the authenticator (e.g., the initial password). In contrast, the requirements for authenticator content contain specific criteria or characteristics (e.g., minimum password length). Developers may deliver system components with factory default authentication credentials (i.e., passwords) to allow for initial installation and configuration. Default authentication credentials are often well known, easily discoverable, and present a significant risk. The requirement to protect individual authenticators may be implemented via control [PL-4](#pl-4) or [PS-6](#ps-6) for authenticators in the possession of individuals and by controls [AC-3](#ac-3), [AC-6](#ac-6) , and [SC-28](#sc-28) for authenticators stored in organizational systems, including passwords stored in hashed or encrypted formats or files containing encrypted or hashed passwords accessible with administrator privileges.

    Systems support authenticator management by organization-defined settings and restrictions for various authenticator characteristics (e.g., minimum password length, validation time window for time synchronous one-time tokens, and number of allowed rejections during the verification stage of biometric authentication). Actions can be taken to safeguard individual authenticators, including maintaining possession of authenticators, not sharing authenticators with others, and immediately reporting lost, stolen, or compromised authenticators. Authenticator management includes issuing and revoking authenticators for temporary access when no longer needed.
  GUIDANCE
  tag nist: ['IA-5']
  tag control: 'IA-5'
  tag objective: 'IA-05h.[01]'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ia_5: true
  tag odp: %w{ia_05_odp_01 ia_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective IA-05h.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
