control 'SC-7 (28)' do
  impact 0.5
  title 'Connections to Public Networks'
  desc <<~DESC
    Prohibit the direct connection of #{input('sc_07_28_odp')} to a public network.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-07(28) the direct connection of the #{input('sc_07_28_odp')} to a public network is prohibited.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; system architecture; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms prohibiting the direct connection of systems to an external network
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A direct connection is a dedicated physical or virtual connection between two or more systems. A public network is a network accessible to the public, including the Internet and organizational extranets with public access.
  GUIDANCE
  tag nist: ['SC-7 (28)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_07_28_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-7 (28)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
