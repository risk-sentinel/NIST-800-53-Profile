control 'SI-18 (4)' do
  impact 0.5
  title 'Individual Requests'
  desc <<~DESC
    Correct or delete personally identifiable information upon request by individuals or their designated representatives.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-18(04) personally identifiable information is corrected or deleted upon request by individuals or their designated representatives.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; system configuration; individual requests; records of correction or deletion actions performed; system audit records; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for responding to individual requests for personally identifiable information correction or deletion; organizational personnel with information security and privacy responsibilities
      TEST: Request mechanisms; automated mechanisms supporting and/or implementing individual requests for correction or deletion
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Inaccurate personally identifiable information maintained by organizations may cause problems for individuals, especially in those business functions where inaccurate information may result in inappropriate decisions or the denial of benefits and services to individuals. Even correct information, in certain circumstances, can cause problems for individuals that outweigh the benefits of an organization maintaining the information. Organizations use discretion when determining if personally identifiable information is to be corrected or deleted based on the scope of requests, the changes sought, the impact of the changes, and laws, regulations, and policies. Organizational personnel consult with the senior agency official for privacy and legal counsel regarding appropriate instances of correction or deletion.
  GUIDANCE
  tag nist: ['SI-18 (4)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true

  describe 'NIST SP 800-53 Rev 5 control SI-18 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
