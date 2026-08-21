control 'SC-20a.[01]' do
  impact 0.5
  title "additional data origin authentication is provided along with the authoritative name resolution data that the system returns in response to external name/address resolution queries;"
  desc <<~DESC
    a. Provide additional data origin authentication and integrity verification artifacts along with the authoritative name resolution data the system returns in response to external name/address resolution queries; and
    b. Provide the means to indicate the security status of child zones and (if the child supports secure resolution services) to enable verification of a chain of trust among parent and child domains, when operating as part of a distributed, hierarchical namespace.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      additional data origin authentication is provided along with the authoritative name resolution data that the system returns in response to external name/address resolution queries;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing secure name/address resolution services (authoritative source); system design documentation; system configuration settings and associated documentation; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for managing DNS
      TEST: Mechanisms supporting and/or implementing secure name/address resolution services
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Providing authoritative source information enables external clients, including remote Internet clients, to obtain origin authentication and integrity verification assurances for the host/service name to network address resolution information obtained through the service. Systems that provide name and address resolution services include domain name system (DNS) servers. Additional artifacts include DNS Security Extensions (DNSSEC) digital signatures and cryptographic keys. Authoritative data includes DNS resource records. The means for indicating the security status of child zones include the use of delegation signer resource records in the DNS. Systems that use technologies other than the DNS to map between host and service names and network addresses provide other means to assure the authenticity and integrity of response data.
  GUIDANCE
  tag nist: ['SC-20']
  tag control: 'SC-20'
  tag objective: 'SC-20a.[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sc_20: true

  describe 'NIST SP 800-53A Rev 5 objective SC-20a.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
