control 'AC-3 (11)' do
  impact 0.5
  title 'Restrict Access to Specific Information Types'
  desc <<~DESC
    Restrict access to data repositories containing #{input('ac_03_11_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-03(11) access to data repositories containing #{input('ac_03_11_odp')} is restricted.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; organizational personnel with responsibilities for data repositories; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing access enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Restricting access to specific information is intended to provide flexibility regarding access control of specific information types within a system. For example, role-based access could be employed to allow access to only a specific type of personally identifiable information within a database rather than allowing access to the database in its entirety. Other examples include restricting access to cryptographic keys, authentication information, and selected system information.
  GUIDANCE
  tag nist: ['AC-3 (11)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_03_11_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-3 (11)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
