control 'AC-6 (4)' do
  impact 0.5
  title 'Separate Processing Domains'
  desc <<~DESC
    Provide separate processing domains to enable finer-grained allocation of user privileges.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-06(04) separate processing domains are provided to enable finer-grain allocation of user privileges.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing least privilege; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for defining least privileges necessary to accomplish specified tasks; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing least privilege functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Providing separate processing domains for finer-grained allocation of user privileges includes using virtualization techniques to permit additional user privileges within a virtual machine while restricting privileges to other virtual machines or to the underlying physical machine, implementing separate physical domains, and employing hardware or software domain separation mechanisms.
  GUIDANCE
  tag nist: ['AC-6 (4)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AC-6 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
