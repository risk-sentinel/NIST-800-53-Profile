control 'CM-3 (6)' do
  impact 0.5
  title 'Cryptography Management'
  desc <<~DESC
    Ensure that cryptographic mechanisms used to provide the following controls are under configuration management: #{input('cm_03_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-03(06) cryptographic mechanisms used to provide #{input('cm_03_06_odp')} are under configuration management.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system configuration change control; configuration management plan; system design documentation; system architecture and configuration documentation; system configuration settings and associated documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration change control responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; members of change control board or similar
      TEST: Organizational processes for configuration change control; cryptographic mechanisms implementing organizational security safeguards (controls)
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The controls referenced in the control enhancement refer to security and privacy controls from the control catalog. Regardless of the cryptographic mechanisms employed, processes and procedures are in place to manage those mechanisms. For example, if system components use certificates for identification and authentication, a process is implemented to address the expiration of those certificates.
  GUIDANCE
  tag nist: ['CM-3 (6)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{cm_03_06_odp}

  describe 'NIST SP 800-53 Rev 5 control CM-3 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
