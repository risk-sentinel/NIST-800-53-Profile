control 'SI-18 (2)' do
  impact 0.5
  title 'Data Tags'
  desc <<~DESC
    Employ data tags to automate the correction or deletion of personally identifiable information across the information life cycle within organizational systems.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-18(02) data tags are employed to automate the correction or deletion of personally identifiable information across the information life cycle within organizational systems.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; procedures addressing data tagging; personally identifiable information inventory; system audit records; audit findings; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for tagging data; organizational personnel with information security and privacy responsibilities
      TEST: Data tagging mechanisms; automated mechanisms supporting and/or implementing data tagging
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Data tagging personally identifiable information includes tags that note processing permissions, authority to process, de-identification, impact level, information life cycle stage, and retention or last updated dates. Employing data tags for personally identifiable information can support the use of automation tools to correct or delete relevant personally identifiable information.
  GUIDANCE
  tag nist: ['SI-18 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SI-18 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
