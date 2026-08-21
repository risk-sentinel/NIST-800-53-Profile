control 'AC-4 (17)' do
  impact 0.5
  title 'Domain Authentication'
  desc <<~DESC
    Uniquely identify and authenticate source and destination points by #{input('ac_04_17_odp')} for information transfer.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-04(17) source and destination points are uniquely identified and authenticated by #{input('ac_04_17_odp')} for information transfer.

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; procedures addressing source and destination domain identification and authentication; system design documentation; system configuration settings and associated documentation; system audit records; list of system labels; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Attribution is a critical component of a security and privacy concept of operations. The ability to identify source and destination points for information flowing within systems allows the forensic reconstruction of events and encourages policy compliance by attributing policy violations to specific organizations or individuals. Successful domain authentication requires that system labels distinguish among systems, organizations, and individuals involved in preparing, sending, receiving, or disseminating information. Attribution also allows organizations to better maintain the lineage of personally identifiable information processing as it flows through systems and can facilitate consent tracking, as well as correction, deletion, or access requests from individuals.
  GUIDANCE
  tag nist: ['AC-4 (17)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_04_17_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-4 (17)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
