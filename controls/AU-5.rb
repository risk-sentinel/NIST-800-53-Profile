control 'AU-5' do
  impact 0.5
  title 'Response to Audit Logging Process Failures'
  desc <<~DESC
    a. Alert #{input('au_05_odp_01')} within #{input('au_05_odp_02')} in the event of an audit logging process failure; and
    b. Take the following additional actions: #{input('au_05_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-05a. #{input('au_05_odp_01')} are alerted in the event of an audit logging process failure within #{input('au_05_odp_02')};
      AU-05b. #{input('au_05_odp_03')} are taken in the event of an audit logging process failure.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing response to audit processing failures; system design documentation; system security plan; privacy plan; system configuration settings and associated documentation; list of personnel to be notified in case of an audit processing failure; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing system response to audit processing failures
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Audit logging process failures include software and hardware errors, failures in audit log capturing mechanisms, and reaching or exceeding audit log storage capacity. Organization-defined actions include overwriting oldest audit records, shutting down the system, and stopping the generation of audit records. Organizations may choose to define additional actions for audit logging process failures based on the type of failure, the location of the failure, the severity of the failure, or a combination of such factors. When the audit logging process failure is related to storage, the response is carried out for the audit log storage repository (i.e., the distinct system component where the audit logs are stored), the system on which the audit logs reside, the total audit log storage capacity of the organization (i.e., all audit log storage repositories combined), or all three. Organizations may decide to take no additional actions after alerting designated roles or personnel.
  GUIDANCE
  tag nist: ['AU-5']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{au_05_odp_01 au_05_odp_02 au_05_odp_03}

  describe 'NIST SP 800-53 Rev 5 control AU-5' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
