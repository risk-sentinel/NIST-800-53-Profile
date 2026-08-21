control 'AU-9 (6)' do
  impact 0.5
  title 'Read-only Access'
  desc <<~DESC
    Authorize read-only access to audit information to #{input('au_09_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-09(06) read-only access to audit information is authorized to #{input('au_09_06_odp')}.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; access control policy and procedures; procedures addressing protection of audit information; system design documentation; system configuration settings and associated documentation; system-generated list of privileged users with read-only access to audit information; access authorizations; access control list; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Mechanisms managing access to audit information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Restricting privileged user or role authorizations to read-only helps to limit the potential damage to organizations that could be initiated by such users or roles, such as deleting audit records to cover up malicious activity.
  GUIDANCE
  tag nist: ['AU-9 (6)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag odp: %w{au_09_06_odp}

  describe 'NIST SP 800-53 Rev 5 control AU-9 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
