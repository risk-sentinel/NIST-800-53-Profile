control 'AC-4 (1)' do
  impact 0.5
  title 'Object Security and Privacy Attributes'
  desc <<~DESC
    Use #{input('ac_4_1_prm_1')} associated with #{input('ac_4_1_prm_2')} to enforce #{input('ac_04_01_odp_09')} as a basis for flow control decisions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-04(01)[01] #{input('ac_04_01_odp_01')} associated with #{input('ac_04_01_odp_03')}, #{input('ac_04_01_odp_05')} , and #{input('ac_04_01_odp_07')} are used to enforce #{input('ac_04_01_odp_09')} as a basis for flow control decisions;
      AC-04(01)[02] #{input('ac_04_01_odp_02')} associated with #{input('ac_04_01_odp_04')}, #{input('ac_04_01_odp_06')} , and #{input('ac_04_01_odp_08')} are used to enforce #{input('ac_04_01_odp_09')} as a basis for flow control decisions.

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; list of security and privacy attributes and associated source and destination objects; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with privacy responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information flow enforcement mechanisms compare security and privacy attributes associated with information (i.e., data content and structure) and source and destination objects and respond appropriately when the enforcement mechanisms encounter information flows not explicitly allowed by information flow policies. For example, an information object labeled Secret would be allowed to flow to a destination object labeled Secret, but an information object labeled Top Secret would not be allowed to flow to a destination object labeled Secret. A dataset of personally identifiable information may be tagged with restrictions against combining with other types of datasets and, thus, would not be allowed to flow to the restricted dataset. Security and privacy attributes can also include source and destination addresses employed in traffic filter firewalls. Flow enforcement using explicit security or privacy attributes can be used, for example, to control the release of certain types of information.
  GUIDANCE
  tag nist: ['AC-4 (1)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_04_01_odp_01 ac_04_01_odp_02 ac_04_01_odp_03 ac_04_01_odp_04 ac_04_01_odp_05 ac_04_01_odp_06 ac_04_01_odp_07 ac_04_01_odp_08 ac_04_01_odp_09 ac_4_1_prm_1 ac_4_1_prm_2}

  describe 'NIST SP 800-53 Rev 5 control AC-4 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
