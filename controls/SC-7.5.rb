control 'SC-7 (5)' do
  impact 0.5
  title 'Deny by Default — Allow by Exception'
  desc <<~DESC
    Deny network communications traffic by default and allow network communications traffic by exception #{input('sc_07_05_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-07(05)[01] network communications traffic is denied by default #{input('sc_07_05_odp_01')};
      SC-07(05)[02] network communications traffic is allowed by exception #{input('sc_07_05_odp_01')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms implementing traffic management at managed interfaces
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Denying by default and allowing by exception applies to inbound and outbound network communications traffic. A deny-all, permit-by-exception network communications traffic policy ensures that only those system connections that are essential and approved are allowed. Deny by default, allow by exception also applies to a system that is connected to an external system.
  GUIDANCE
  tag nist: ['SC-7 (5)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{sc_07_05_odp_01}

  describe 'NIST SP 800-53 Rev 5 control SC-7 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
