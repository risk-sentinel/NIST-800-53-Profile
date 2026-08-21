control 'AU-12c.' do
  impact 0.5
  title "audit records for the event types defined in AU-02_ODP[02] that include the audit record content defined in AU-03 are generated."
  desc <<~DESC
    a. Provide audit record generation capability for the event types the system is capable of auditing as defined in [AU-2a](#au-2_smt.a) on #{input('au_12_odp_01')};
    b. Allow #{input('au_12_odp_02')} to select the event types that are to be logged by specific components of the system; and
    c. Generate audit records for the event types defined in [AU-2c](#au-2_smt.c) that include the audit record content defined in [AU-3](#au-3).
  DESC
  desc 'check', <<~CHECK
    Determine if:
      audit records for the event types defined in AU-02_ODP[02] that include the audit record content defined in AU-03 are generated.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing audit record generation; system security plan; privacy plan; system design documentation; system configuration settings and associated documentation; list of auditable events; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit record generation responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing audit record generation capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Audit records can be generated from many different system components. The event types specified in [AU-2d](#au-2_smt.d) are the event types for which audit logs are to be generated and are a subset of all event types for which the system can generate audit records.
  GUIDANCE
  tag nist: ['AU-12']
  tag control: 'AU-12'
  tag objective: 'AU-12c.'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_au_12: true
  tag odp: %w{au_12_odp_01 au_12_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AU-12c.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
