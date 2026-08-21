control 'SC-07(03)' do
  impact 0.5
  title "the number of external network connections to the system is limited."
  desc <<~DESC
    Limit the number of external network connections to the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the number of external network connections to the system is limited.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; boundary protection hardware and software; system architecture and configuration documentation; system configuration settings and associated documentation; communications and network traffic monitoring logs; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms implementing boundary protection capabilities; mechanisms limiting the number of external network connections to the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Limiting the number of external network connections facilitates monitoring of inbound and outbound communications traffic. The Trusted Internet Connection [DHS TIC](#4f42ee6e-86cc-403b-a51f-76c2b4f81b54) initiative is an example of a federal guideline that requires limits on the number of external network connections. Limiting the number of external network connections to the system is important during transition periods from older to newer technologies (e.g., transitioning from IPv4 to IPv6 network protocols). Such transitions may require implementing the older and newer technologies simultaneously during the transition period and thus increase the number of access points to the system.
  GUIDANCE
  tag nist: ['SC-7 (3)']
  tag control: 'SC-7 (3)'
  tag objective: 'SC-07(03)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sc_7_3: true

  describe 'NIST SP 800-53A Rev 5 objective SC-07(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
