control 'AC-18a.[02]' do
  impact 0.5
  title "connection requirements are established for each type of wireless access;"
  desc <<~DESC
    a. Establish configuration requirements, connection requirements, and implementation guidance for each type of wireless access; and
    b. Authorize each type of wireless access to the system prior to allowing such connections.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      connection requirements are established for each type of wireless access;

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing wireless access implementation and usage (including restrictions); configuration management plan; system design documentation; system configuration settings and associated documentation; wireless access authorizations; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for managing wireless access connections; organizational personnel with information security responsibilities
      TEST: Wireless access management capability for the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Wireless technologies include microwave, packet radio (ultra-high frequency or very high frequency), 802.11x, and Bluetooth. Wireless networks use authentication protocols that provide authenticator protection and mutual authentication.
  GUIDANCE
  tag nist: ['AC-18']
  tag control: 'AC-18'
  tag objective: 'AC-18a.[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_18: true

  describe 'NIST SP 800-53A Rev 5 objective AC-18a.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
