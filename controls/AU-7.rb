control 'AU-7' do
  impact 0.5
  title 'Audit Record Reduction and Report Generation'
  desc <<~DESC
    Provide and implement an audit record reduction and report generation capability that:
      a. Supports on-demand audit record review, analysis, and reporting requirements and after-the-fact investigations of incidents; and
      b. Does not alter the original content or time ordering of audit records.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-07a.
        AU-07a.[01] an audit record reduction and report generation capability is provided that supports on-demand audit record review, analysis, and reporting requirements and after-the-fact investigations of incidents;
        AU-07a.[02] an audit record reduction and report generation capability is implemented that supports on-demand audit record review, analysis, and reporting requirements and after-the-fact investigations of incidents;
      AU-07b.
        AU-07b.[01] an audit record reduction and report generation capability is provided that does not alter the original content or time ordering of audit records;
        AU-07b.[02] an audit record reduction and report generation capability is implemented that does not alter the original content or time ordering of audit records.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing audit reduction and report generation; system design documentation; system configuration settings and associated documentation; audit reduction, review, analysis, and reporting tools; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit reduction and report generation responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Audit reduction and report generation capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Audit record reduction is a process that manipulates collected audit log information and organizes it into a summary format that is more meaningful to analysts. Audit record reduction and report generation capabilities do not always emanate from the same system or from the same organizational entities that conduct audit logging activities. The audit record reduction capability includes modern data mining techniques with advanced data filters to identify anomalous behavior in audit records. The report generation capability provided by the system can generate customizable reports. Time ordering of audit records can be an issue if the granularity of the timestamp in the record is insufficient.
  GUIDANCE
  tag nist: ['AU-7']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control AU-7' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
