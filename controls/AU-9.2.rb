control 'AU-9 (2)' do
  impact 0.5
  title 'Store on Separate Physical Systems or Components'
  desc <<~DESC
    Store audit records #{input('au_09_02_odp')} in a repository that is part of a physically different system or system component than the system or component being audited.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-09(02) audit records are stored #{input('au_09_02_odp')} in a repository that is part of a physically different system or system component than the system or component being audited.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing protection of audit information; system design documentation; system configuration settings and associated documentation; system or media storing backups of system audit records; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing the backing up of audit records
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Storing audit records in a repository separate from the audited system or system component helps to ensure that a compromise of the system being audited does not also result in a compromise of the audit records. Storing audit records on separate physical systems or components also preserves the confidentiality and integrity of audit records and facilitates the management of audit records as an organization-wide activity. Storing audit records on separate systems or components applies to initial generation as well as backup or long-term storage of audit records.
  GUIDANCE
  tag nist: ['AU-9 (2)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{au_09_02_odp}

  describe 'NIST SP 800-53 Rev 5 control AU-9 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
