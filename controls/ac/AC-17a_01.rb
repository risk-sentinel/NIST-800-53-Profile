control 'AC-17a.[01]' do
  impact 0.5
  title "usage restrictions are established and documented for each type of remote access allowed;"
  desc <<~DESC
    a. Establish and document usage restrictions, configuration/connection requirements, and implementation guidance for each type of remote access allowed; and
    b. Authorize each type of remote access to the system prior to allowing such connections.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      usage restrictions are established and documented for each type of remote access allowed;

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing remote access implementation and usage (including restrictions); configuration management plan; system configuration settings and associated documentation; remote access authorizations; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for managing remote access connections; system/network administrators; organizational personnel with information security responsibilities
      TEST: Remote access management capability for the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Remote access is access to organizational systems (or processes acting on behalf of users) that communicate through external networks such as the Internet. Types of remote access include dial-up, broadband, and wireless. Organizations use encrypted virtual private networks (VPNs) to enhance confidentiality and integrity for remote connections. The use of encrypted VPNs provides sufficient assurance to the organization that it can effectively treat such connections as internal networks if the cryptographic mechanisms used are implemented in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Still, VPN connections traverse external networks, and the encrypted VPN does not enhance the availability of remote connections. VPNs with encrypted tunnels can also affect the ability to adequately monitor network communications traffic for malicious code. Remote access controls apply to systems other than public web servers or systems designed for public access. Authorization of each remote access type addresses authorization prior to allowing remote access without specifying the specific formats for such authorization. While organizations may use information exchange and system connection security agreements to manage remote access connections to other systems, such agreements are addressed as part of [CA-3](#ca-3) . Enforcing access restrictions for remote access is addressed via [AC-3](#ac-3).
  GUIDANCE
  tag nist: ['AC-17']
  tag control: 'AC-17'
  tag objective: 'AC-17a.[01]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_17: true

  describe 'NIST SP 800-53A Rev 5 objective AC-17a.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
