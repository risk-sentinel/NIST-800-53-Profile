control 'AU-05(05)' do
  impact 0.5
  title "an alternate audit logging capability is provided in the event of a failure in primary audit logging capability that implements #{input('au_05_05_odp')}."
  desc <<~DESC
    Provide an alternate audit logging capability in the event of a failure in primary audit logging capability that implements #{input('au_05_05_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an alternate audit logging capability is provided in the event of a failure in primary audit logging capability that implements #{input('au_05_05_odp')}.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing response to audit processing failures; system design documentation; system security plan; privacy plan; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Alternate audit logging capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Since an alternate audit logging capability may be a short-term protection solution employed until the failure in the primary audit logging capability is corrected, organizations may determine that the alternate audit logging capability need only provide a subset of the primary audit logging functionality that is impacted by the failure.
  GUIDANCE
  tag nist: ['AU-5 (5)']
  tag control: 'AU-5 (5)'
  tag objective: 'AU-05(05)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_5_5: true
  tag odp: %w{au_05_05_odp}

  describe 'NIST SP 800-53A Rev 5 objective AU-05(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
