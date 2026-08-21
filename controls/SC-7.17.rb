control 'SC-7 (17)' do
  impact 0.5
  title 'Automated Enforcement of Protocol Formats'
  desc <<~DESC
    Enforce adherence to protocol formats.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-07(17) adherence to protocol formats is enforced.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system architecture; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms supporting and/or implementing the enforcement of adherence to protocol formats
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System components that enforce protocol formats include deep packet inspection firewalls and XML gateways. The components verify adherence to protocol formats and specifications at the application layer and identify vulnerabilities that cannot be detected by devices operating at the network or transport layers.
  GUIDANCE
  tag nist: ['SC-7 (17)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SC-7 (17)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
