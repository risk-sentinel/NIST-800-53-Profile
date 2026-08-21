control 'AU-09(07)' do
  impact 0.5
  title "audit information is stored on a component running a different operating system than the system or component being audited."
  desc <<~DESC
    Store audit information on a component running a different operating system than the system or component being audited.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      audit information is stored on a component running a different operating system than the system or component being audited.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; access control policy and procedures; procedures addressing protection of audit information; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Mechanisms implementing operating system verification capability; mechanisms verifying audit information storage location
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Storing auditing information on a system component running a different operating system reduces the risk of a vulnerability specific to the system, resulting in a compromise of the audit records.
  GUIDANCE
  tag nist: ['AU-9 (7)']
  tag control: 'AU-9 (7)'
  tag objective: 'AU-09(07)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_9_7: true

  describe 'NIST SP 800-53A Rev 5 objective AU-09(07)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
