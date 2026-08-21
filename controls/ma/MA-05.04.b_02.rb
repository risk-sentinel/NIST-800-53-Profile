control 'MA-05(04)(b)[02]' do
  impact 0.5
  title "consents regarding the use of foreign nationals to conduct maintenance and diagnostic activities on classified systems are fully documented within Memoranda of Agreements;"
  desc <<~DESC
    Ensure that:
      (a) Foreign nationals with appropriate security clearances are used to conduct maintenance and diagnostic activities on classified systems only when the systems are jointly owned and operated by the United States and foreign allied governments, or owned and operated solely by foreign allied governments; and
      (b) Approvals, consents, and detailed operational conditions regarding the use of foreign nationals to conduct maintenance and diagnostic activities on classified systems are fully documented within Memoranda of Agreements.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      consents regarding the use of foreign nationals to conduct maintenance and diagnostic activities on classified systems are fully documented within Memoranda of Agreements;

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing maintenance personnel; system media protection policy; access control policy and procedures; physical and environmental protection policy and procedures; memorandum of agreement; maintenance records; access control records; access credentials; access authorizations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities, organizational personnel with personnel security responsibilities; organizational personnel managing memoranda of agreements; organizational personnel with information security responsibilities
      TEST: Organizational processes for managing foreign national maintenance personnel
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Personnel who conduct maintenance and diagnostic activities on organizational systems may be exposed to classified information. If non-U.S. citizens are permitted to perform maintenance and diagnostics activities on classified systems, then additional vetting is required to ensure agreements and restrictions are not being violated.
  GUIDANCE
  tag nist: ['MA-5 (4)']
  tag control: 'MA-5 (4)'
  tag objective: 'MA-05(04)(b)[02]'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}
  tag control_ma_5_4: true

  describe 'NIST SP 800-53A Rev 5 objective MA-05(04)(b)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
