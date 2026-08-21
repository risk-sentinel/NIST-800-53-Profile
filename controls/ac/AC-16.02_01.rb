control 'AC-16(02)[01]' do
  impact 0.5
  title "authorized individuals (or processes acting on behalf of individuals) are provided with the capability to define or change the value of associated security attributes;"
  desc <<~DESC
    Provide authorized individuals (or processes acting on behalf of individuals) the capability to define or change the value of associated security and privacy attributes.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      authorized individuals (or processes acting on behalf of individuals) are provided with the capability to define or change the value of associated security attributes;

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing the change of security and privacy attribute values; system design documentation; system configuration settings and associated documentation; list of individuals authorized to change security and privacy attributes; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for changing values of security and privacy attributes; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms permitting changes to values of security and privacy attributes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The content or assigned values of attributes can directly affect the ability of individuals to access organizational information. Therefore, it is important for systems to be able to limit the ability to create or modify attributes to authorized individuals.
  GUIDANCE
  tag nist: ['AC-16 (2)']
  tag control: 'AC-16 (2)'
  tag objective: 'AC-16(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_16_2: true

  describe 'NIST SP 800-53A Rev 5 objective AC-16(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
