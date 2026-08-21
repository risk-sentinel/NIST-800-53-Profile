control 'SC-17a.' do
  impact 0.5
  title "public key certificates are issued under #{input('sc_17_odp')} , or public key certificates are obtained from an approved service provider;"
  desc <<~DESC
    a. Issue public key certificates under an #{input('sc_17_odp')} or obtain public key certificates from an approved service provider; and
    b. Include only approved trust anchors in trust stores or certificate stores managed by the organization.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      public key certificates are issued under #{input('sc_17_odp')} , or public key certificates are obtained from an approved service provider;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing public key infrastructure certificates; public key certificate policy or policies; public key issuing process; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for issuing public key certificates; service providers
      TEST: Mechanisms supporting and/or implementing the management of public key infrastructure certificates
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Public key infrastructure (PKI) certificates are certificates with visibility external to organizational systems and certificates related to the internal operations of systems, such as application-specific time services. In cryptographic systems with a hierarchical structure, a trust anchor is an authoritative source (i.e., a certificate authority) for which trust is assumed and not derived. A root certificate for a PKI system is an example of a trust anchor. A trust store or certificate store maintains a list of trusted root certificates.
  GUIDANCE
  tag nist: ['SC-17']
  tag control: 'SC-17'
  tag objective: 'SC-17a.'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sc_17: true
  tag odp: %w{sc_17_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-17a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
