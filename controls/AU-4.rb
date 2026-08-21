control 'AU-4' do
  impact 0.5
  title 'Audit Log Storage Capacity'
  desc <<~DESC
    Allocate audit log storage capacity to accommodate #{input('au_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-04 audit log storage capacity is allocated to accommodate #{input('au_04_odp')}.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing audit storage capacity; system security plan; privacy plan; system design documentation; system configuration settings and associated documentation; audit record storage requirements; audit record storage capability for system components; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Audit record storage capacity and related configuration settings
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations consider the types of audit logging to be performed and the audit log processing requirements when allocating audit log storage capacity. Allocating sufficient audit log storage capacity reduces the likelihood of such capacity being exceeded and resulting in the potential loss or reduction of audit logging capability.
  GUIDANCE
  tag nist: ['AU-4']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{au_04_odp}

  describe 'NIST SP 800-53 Rev 5 control AU-4' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
