control 'AC-17 (4)' do
  impact 0.5
  title 'Privileged Commands and Access'
  desc <<~DESC
    (a) Authorize the execution of privileged commands and access to security-relevant information via remote access only in a format that provides assessable evidence and for the following needs: #{input('ac_17_4_prm_1')} ; and
    (b) Document the rationale for remote access in the security plan for the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-17(04)(a)
        AC-17(04)(a)[01] the execution of privileged commands via remote access is authorized only in a format that provides assessable evidence;
        AC-17(04)(a)[02] access to security-relevant information via remote access is authorized only in a format that provides assessable evidence;
        AC-17(04)(a)[03] the execution of privileged commands via remote access is authorized only for the following needs: #{input('ac_17_04_odp_01')};
        AC-17(04)(a)[04] access to security-relevant information via remote access is authorized only for the following needs: #{input('ac_17_04_odp_02')};
      AC-17(04)(b) the rationale for remote access is documented in the security plan for the system.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing remote access to the system; system configuration settings and associated documentation; security plan; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing remote access management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Remote access to systems represents a significant potential vulnerability that can be exploited by adversaries. As such, restricting the execution of privileged commands and access to security-relevant information via remote access reduces the exposure of the organization and the susceptibility to threats by adversaries to the remote access capability.
  GUIDANCE
  tag nist: ['AC-17 (4)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ac_17_04_odp_01 ac_17_04_odp_02 ac_17_4_prm_1}

  describe 'NIST SP 800-53 Rev 5 control AC-17 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
