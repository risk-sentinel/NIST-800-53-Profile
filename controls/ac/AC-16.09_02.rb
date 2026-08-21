control 'AC-16(09)[02]' do
  impact 0.5
  title "privacy attributes associated with information are changed only via regrading mechanisms validated using #{input('ac_16_09_odp_02')}."
  desc <<~DESC
    Change security and privacy attributes associated with information only via regrading mechanisms validated using #{input('ac_16_9_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      privacy attributes associated with information are changed only via regrading mechanisms validated using #{input('ac_16_09_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing reassignment of security attributes to information; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for reassigning association of security and privacy attributes to information; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing techniques or procedures for reassigning association of security and privacy attributes to information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A regrading mechanism is a trusted process authorized to re-classify and re-label data in accordance with a defined policy exception. Validated regrading mechanisms are used by organizations to provide the requisite levels of assurance for attribute reassignment activities. The validation is facilitated by ensuring that regrading mechanisms are single purpose and of limited function. Since security and privacy attribute changes can directly affect policy enforcement actions, implementing trustworthy regrading mechanisms is necessary to help ensure that such mechanisms perform in a consistent and correct mode of operation.
  GUIDANCE
  tag nist: ['AC-16 (9)']
  tag control: 'AC-16 (9)'
  tag objective: 'AC-16(09)[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_16_9: true
  tag odp: %w{ac_16_09_odp_02 ac_16_9_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective AC-16(09)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
