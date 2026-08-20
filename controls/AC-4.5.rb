control 'AC-4 (5)' do
  impact 0.5
  title 'Embedded Data Types'
  desc <<~DESC
    Enforce #{input('ac_04_05_odp')} on embedding data types within other data types.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-04(05) #{input('ac_04_05_odp')} are enforced on embedding data types within other data types.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; list of limitations to be enforced on embedding data types within other data types; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Embedding data types within other data types may result in reduced flow control effectiveness. Data type embedding includes inserting files as objects within other files and using compressed or archived data types that may include multiple embedded data types. Limitations on data type embedding consider the levels of embedding and prohibit levels of data type embedding that are beyond the capability of the inspection tools.
  GUIDANCE
  tag nist: ['AC-4 (5)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_04_05_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-4 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
