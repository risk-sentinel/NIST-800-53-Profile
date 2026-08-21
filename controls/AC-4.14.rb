control 'AC-4 (14)' do
  impact 0.5
  title 'Security or Privacy Policy Filter Constraints'
  desc <<~DESC
    When transferring information between different security domains, implement #{input('ac_4_14_prm_1')} requiring fully enumerated formats that restrict data structure and content.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-04(14)[01] when transferring information between different security domains, implemented #{input('ac_04_14_odp_01')} require fully enumerated formats that restrict data structure and content;
      AC-04(14)[02] when transferring information between different security domains, implemented #{input('ac_04_14_odp_02')} require fully enumerated formats that restrict data structure and content.

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; list of security and privacy policy filters; list of data structure policy filters; list of data content policy filters; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement policy; security and privacy policy filters
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Data structure and content restrictions reduce the range of potential malicious or unsanctioned content in cross-domain transactions. Security or privacy policy filters that restrict data structures include restricting file sizes and field lengths. Data content policy filters include encoding formats for character sets, restricting character data fields to only contain alpha-numeric characters, prohibiting special characters, and validating schema structures.
  GUIDANCE
  tag nist: ['AC-4 (14)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_04_14_odp_01 ac_04_14_odp_02 ac_4_14_prm_1}

  describe 'NIST SP 800-53 Rev 5 control AC-4 (14)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
