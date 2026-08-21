control 'AC-04(21)[02]' do
  impact 0.5
  title "information flows are separated physically using #{input('ac_04_21_odp_02')} to accomplish #{input('ac_04_21_odp_03')}."
  desc <<~DESC
    Separate information flows logically or physically using #{input('ac_4_21_prm_1')} to accomplish #{input('ac_04_21_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      information flows are separated physically using #{input('ac_04_21_odp_02')} to accomplish #{input('ac_04_21_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Information flow enforcement policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; list of required separation of information flows by information types; list of mechanisms and/or techniques used to logically or physically separate information flows; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information flow enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Enforcing the separation of information flows associated with defined types of data can enhance protection by ensuring that information is not commingled while in transit and by enabling flow control by transmission paths that are not otherwise achievable. Types of separable information include inbound and outbound communications traffic, service requests and responses, and information of differing security impact or classification levels.
  GUIDANCE
  tag nist: ['AC-4 (21)']
  tag control: 'AC-4 (21)'
  tag objective: 'AC-04(21)[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_21: true
  tag odp: %w{ac_04_21_odp_02 ac_04_21_odp_03 ac_4_21_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective AC-04(21)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
