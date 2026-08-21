control 'SC-21[02]' do
  impact 0.5
  title "data origin authentication is performed on the name/address resolution responses that the system receives from authoritative sources;"
  desc <<~DESC
    Request and perform data origin authentication and data integrity verification on the name/address resolution responses the system receives from authoritative sources.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      data origin authentication is performed on the name/address resolution responses that the system receives from authoritative sources;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing secure name/address resolution services (recursive or caching resolver); system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for managing DNS
      TEST: Mechanisms supporting and/or implementing data origin authentication and data integrity verification for name/address resolution services
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Each client of name resolution services either performs this validation on its own or has authenticated channels to trusted validation providers. Systems that provide name and address resolution services for local clients include recursive resolving or caching domain name system (DNS) servers. DNS client resolvers either perform validation of DNSSEC signatures, or clients use authenticated channels to recursive resolvers that perform such validations. Systems that use technologies other than the DNS to map between host and service names and network addresses provide some other means to enable clients to verify the authenticity and integrity of response data.
  GUIDANCE
  tag nist: ['SC-21']
  tag control: 'SC-21'
  tag objective: 'SC-21[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sc_21: true

  describe 'NIST SP 800-53A Rev 5 objective SC-21[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
