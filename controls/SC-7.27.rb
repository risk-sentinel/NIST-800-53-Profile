control 'SC-7 (27)' do
  impact 0.5
  title 'Unclassified Non-national Security System Connections'
  desc <<~DESC
    Prohibit the direct connection of #{input('sc_07_27_odp_01')} to an external network without the use of #{input('sc_07_27_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-07(27) the direct connection of #{input('sc_07_27_odp_01')} to an external network without the use of a #{input('sc_07_27_odp_02')} is prohibited.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; system architecture; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms prohibiting the direct connection of unclassified, non-national security systems to an external network
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A direct connection is a dedicated physical or virtual connection between two or more systems. Organizations typically do not have complete control over external networks, including the Internet. Boundary protection devices (e.g., firewalls, gateways, and routers) mediate communications and information flows between unclassified non-national security systems and external networks.
  GUIDANCE
  tag nist: ['SC-7 (27)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_07_27_odp_01 sc_07_27_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SC-7 (27)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
