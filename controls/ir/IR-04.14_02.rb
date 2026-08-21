control 'IR-04(14)[02]' do
  impact 0.5
  title "a security operations center is maintained."
  desc <<~DESC
    Establish and maintain a security operations center.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a security operations center is maintained.

    Assessment methods and objects:
      EXAMINE: Incident response policy; contingency planning policy; procedures addressing incident handling; procedures addressing the security operations center operations; mechanisms supporting dynamic response capabilities; incident response plan; contingency plan; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with contingency planning responsibilities; security operations center personnel; organizational personnel with information security responsibilities
      TEST: Mechanisms that support and/or implement the security operations center capability; mechanisms that support and/or implement the incident handling process
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A security operations center (SOC) is the focal point for security operations and computer network defense for an organization. The purpose of the SOC is to defend and monitor an organization’s systems and networks (i.e., cyber infrastructure) on an ongoing basis. The SOC is also responsible for detecting, analyzing, and responding to cybersecurity incidents in a timely manner. The organization staffs the SOC with skilled technical and operational personnel (e.g., security analysts, incident response personnel, systems security engineers) and implements a combination of technical, management, and operational controls (including monitoring, scanning, and forensics tools) to monitor, fuse, correlate, analyze, and respond to threat and security-relevant event data from multiple sources. These sources include perimeter defenses, network devices (e.g., routers, switches), and endpoint agent data feeds. The SOC provides a holistic situational awareness capability to help organizations determine the security posture of the system and organization. A SOC capability can be obtained in a variety of ways. Larger organizations may implement a dedicated SOC while smaller organizations may employ third-party organizations to provide such a capability.
  GUIDANCE
  tag nist: ['IR-4 (14)']
  tag control: 'IR-4 (14)'
  tag objective: 'IR-04(14)[02]'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag control_ir_4_14: true

  describe 'NIST SP 800-53A Rev 5 objective IR-04(14)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
