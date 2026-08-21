control 'AU-11' do
  impact 0.5
  title "audit records are retained for #{input('au_11_odp')} to provide support for after-the-fact investigations of incidents and to meet regulatory and organizational information retention requirements."
  desc <<~DESC
    Retain audit records for #{input('au_11_odp')} to provide support for after-the-fact investigations of incidents and to meet regulatory and organizational information retention requirements.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      audit records are retained for #{input('au_11_odp')} to provide support for after-the-fact investigations of incidents and to meet regulatory and organizational information retention requirements.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; audit record retention policy and procedures; security plan; organization-defined retention period for audit records; audit record archives; audit logs; audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit record retention responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations retain audit records until it is determined that the records are no longer needed for administrative, legal, audit, or other operational purposes. This includes the retention and availability of audit records relative to Freedom of Information Act (FOIA) requests, subpoenas, and law enforcement actions. Organizations develop standard categories of audit records relative to such types of actions and standard response processes for each type of action. The National Archives and Records Administration (NARA) General Records Schedules provide federal policy on records retention.
  GUIDANCE
  tag nist: ['AU-11']
  tag control: 'AU-11'
  tag objective: 'AU-11'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_au_11: true
  tag odp: %w{au_11_odp}

  describe 'NIST SP 800-53A Rev 5 objective AU-11' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
