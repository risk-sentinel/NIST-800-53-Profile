control 'AU-7 (1)' do
  impact 0.5
  title 'Automatic Processing'
  desc <<~DESC
    Provide and implement the capability to process, sort, and search audit records for events of interest based on the following content: #{input('au_07_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-07(01)[01] the capability to process, sort, and search audit records for events of interest based on #{input('au_07_01_odp')} are provided;
      AU-07(01)[02] the capability to process, sort, and search audit records for events of interest based on #{input('au_07_01_odp')} are implemented.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing audit reduction and report generation; system design documentation; system configuration settings and associated documentation; audit reduction, review, analysis, and reporting tools; audit record criteria (fields) establishing events of interest; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit reduction and report generation responsibilities; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Audit reduction and report generation capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Events of interest can be identified by the content of audit records, including system resources involved, information objects accessed, identities of individuals, event types, event locations, event dates and times, Internet Protocol addresses involved, or event success or failure. Organizations may define event criteria to any degree of granularity required, such as locations selectable by a general networking location or by specific system component.
  GUIDANCE
  tag nist: ['AU-7 (1)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{au_07_01_odp}

  describe 'NIST SP 800-53 Rev 5 control AU-7 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
