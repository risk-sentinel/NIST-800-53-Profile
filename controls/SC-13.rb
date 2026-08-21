control 'SC-13' do
  impact 0.5
  title 'Cryptographic Protection'
  desc <<~DESC
    a. Determine the #{input('sc_13_odp_01')} ; and
    b. Implement the following types of cryptography required for each specified cryptographic use: #{input('sc_13_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-13a. #{input('sc_13_odp_01')} are identified;
      SC-13b. #{input('sc_13_odp_02')} for each specified cryptographic use (defined in SC-13_ODP[01]) are implemented.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing cryptographic protection; system design documentation; system configuration settings and associated documentation; cryptographic module validation certificates; list of FIPS-validated cryptographic modules; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with responsibilities for cryptographic protection
      TEST: Mechanisms supporting and/or implementing cryptographic protection
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Cryptography can be employed to support a variety of security solutions, including the protection of classified information and controlled unclassified information, the provision and implementation of digital signatures, and the enforcement of information separation when authorized individuals have the necessary clearances but lack the necessary formal access approvals. Cryptography can also be used to support random number and hash generation. Generally applicable cryptographic standards include FIPS-validated cryptography and NSA-approved cryptography. For example, organizations that need to protect classified information may specify the use of NSA-approved cryptography. Organizations that need to provision and implement digital signatures may specify the use of FIPS-validated cryptography. Cryptography is implemented in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines.
  GUIDANCE
  tag nist: ['SC-13']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{sc_13_odp_01 sc_13_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SC-13' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
