control 'AC-21 (2)' do
  impact 0.5
  title 'Information Search and Retrieval'
  desc <<~DESC
    Implement information search and retrieval services that enforce #{input('ac_21_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-21(02) information search and retrieval services that enforce #{input('ac_21_02_odp')} are implemented.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing user-based collaboration and information sharing (including restrictions); system design documentation; system configuration settings and associated documentation; system-generated list of access restrictions regarding information to be shared; information search and retrieval records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities for system search and retrieval services; system/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: System search and retrieval services enforcing information-sharing restrictions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information search and retrieval services identify information system resources relevant to an information need.
  GUIDANCE
  tag nist: ['AC-21 (2)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_21_02_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-21 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
