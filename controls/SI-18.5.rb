control 'SI-18 (5)' do
  impact 0.5
  title 'Notice of Correction or Deletion'
  desc <<~DESC
    Notify #{input('si_18_05_odp')} and individuals that the personally identifiable information has been corrected or deleted.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-18(05) #{input('si_18_05_odp')} and individuals are notified when the personally identifiable information has been corrected or deleted.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; system configuration; individual requests for corrections or deletions; notifications of correction or deletion action; system audit records; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for sending correction or deletion notices; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for notifications of correction or deletion; automated mechanisms supporting and/or implementing notifications of correction or deletion
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    When personally identifiable information is corrected or deleted, organizations take steps to ensure that all authorized recipients of such information, and the individual with whom the information is associated or their designated representatives, are informed of the corrected or deleted information.
  GUIDANCE
  tag nist: ['SI-18 (5)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_18_05_odp}

  describe 'NIST SP 800-53 Rev 5 control SI-18 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
