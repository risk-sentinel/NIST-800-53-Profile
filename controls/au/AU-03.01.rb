control 'AU-03(01)' do
  impact 0.5
  title "generated audit records contain the following #{input('au_03_01_odp')}."
  desc <<~DESC
    Generate audit records containing the following additional information: #{input('au_03_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      generated audit records contain the following #{input('au_03_01_odp')}.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing content of audit records; system security plan; privacy plan; system design documentation; system configuration settings and associated documentation; list of organization-defined auditable events; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: system audit capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The ability to add information generated in audit records is dependent on system functionality to configure the audit record content. Organizations may consider additional information in audit records including, but not limited to, access control or flow control rules invoked and individual identities of group account users. Organizations may also consider limiting additional audit record information to only information that is explicitly needed for audit requirements. This facilitates the use of audit trails and audit logs by not including information in audit records that could potentially be misleading, make it more difficult to locate information of interest, or increase the risk to individuals' privacy.
  GUIDANCE
  tag nist: ['AU-3 (1)']
  tag control: 'AU-3 (1)'
  tag objective: 'AU-03(01)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_au_3_1: true
  tag odp: %w{au_03_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective AU-03(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
