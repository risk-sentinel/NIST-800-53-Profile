control 'SC-40' do
  impact 0.5
  title 'Wireless Link Protection'
  desc <<~DESC
    Protect external and internal #{input('sc_40_prm_1')} from the following signal parameter attacks: #{input('sc_40_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-40[01] external #{input('sc_40_odp_01')} are protected from #{input('sc_40_odp_02')}.
      SC-40[02] internal #{input('sc_40_odp_03')} are protected from #{input('sc_40_odp_04')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; access control policy and procedures; procedures addressing wireless link protection; system design documentation; wireless network diagrams; system configuration settings and associated documentation; system architecture; list of internal and external wireless links; list of signal parameter attacks or references to sources for attacks; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel authorizing, installing, configuring, and/or maintaining internal and external wireless links
      TEST: Mechanisms supporting and/or implementing the protection of wireless links
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Wireless link protection applies to internal and external wireless communication links that may be visible to individuals who are not authorized system users. Adversaries can exploit the signal parameters of wireless links if such links are not adequately protected. There are many ways to exploit the signal parameters of wireless links to gain intelligence, deny service, or spoof system users. Protection of wireless links reduces the impact of attacks that are unique to wireless systems. If organizations rely on commercial service providers for transmission services as commodity items rather than as fully dedicated services, it may not be possible to implement wireless link protections to the extent necessary to meet organizational security requirements.
  GUIDANCE
  tag nist: ['SC-40']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_40_odp_01 sc_40_odp_02 sc_40_odp_03 sc_40_odp_04 sc_40_prm_1 sc_40_prm_2}

  describe 'NIST SP 800-53 Rev 5 control SC-40' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
