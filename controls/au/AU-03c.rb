control 'AU-03c.' do
  impact 0.5
  title "audit records contain information that establishes where the event occurred;"
  desc <<~DESC
    Ensure that audit records contain information that establishes the following:
      a. What type of event occurred;
      b. When the event occurred;
      c. Where the event occurred;
      d. Source of the event;
      e. Outcome of the event; and
      f. Identity of any individuals, subjects, or objects/entities associated with the event.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      audit records contain information that establishes where the event occurred;

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing content of audit records; system design documentation; system configuration settings and associated documentation; list of organization-defined auditable events; system audit records; system incident reports; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Mechanisms implementing system auditing of auditable events
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Audit record content that may be necessary to support the auditing function includes event descriptions (item a), time stamps (item b), source and destination addresses (item c), user or process identifiers (items d and f), success or fail indications (item e), and filenames involved (items a, c, e, and f) . Event outcomes include indicators of event success or failure and event-specific results, such as the system security and privacy posture after the event occurred. Organizations consider how audit records can reveal information about individuals that may give rise to privacy risks and how best to mitigate such risks. For example, there is the potential to reveal personally identifiable information in the audit trail, especially if the trail records inputs or is based on patterns or time of usage.
  GUIDANCE
  tag nist: ['AU-3']
  tag control: 'AU-3'
  tag objective: 'AU-03c.'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_au_3: true

  describe 'NIST SP 800-53A Rev 5 objective AU-03c.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
