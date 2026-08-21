control 'AC-04(11)[02]' do
  impact 0.5
  title "capability is provided for privileged administrators to configure #{input('ac_04_11_odp_02')} to support different security or privacy policies."
  desc <<~DESC
    Provide the capability for privileged administrators to configure #{input('ac_4_11_prm_1')} to support different security or privacy policies.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      capability is provided for privileged administrators to configure #{input('ac_04_11_odp_02')} to support different security or privacy policies.

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; list of security policy filters; list of privacy policy filters; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for configuring security and privacy policy filters; system/network administrators; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement policy; security and privacy policy filters
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Documentation contains detailed information for configuring security or privacy policy filters. For example, administrators can configure security or privacy policy filters to include the list of inappropriate words that security or privacy policy mechanisms check in accordance with the definitions provided by organizations.
  GUIDANCE
  tag nist: ['AC-4 (11)']
  tag control: 'AC-4 (11)'
  tag objective: 'AC-04(11)[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_11: true
  tag odp: %w{ac_04_11_odp_02 ac_4_11_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective AC-04(11)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
