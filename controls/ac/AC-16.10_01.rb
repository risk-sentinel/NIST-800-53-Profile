control 'AC-16(10)[01]' do
  impact 0.5
  title "authorized individuals are provided with the capability to define or change the type and value of security attributes available for association with subjects and objects;"
  desc <<~DESC
    Provide authorized individuals the capability to define or change the type and value of security and privacy attributes available for association with subjects and objects.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      authorized individuals are provided with the capability to define or change the type and value of security attributes available for association with subjects and objects;

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing configuration of security and privacy attributes by authorized individuals; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for defining or changing security and privacy attributes associated with information; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing capability for defining or changing security and privacy attributes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The content or assigned values of security and privacy attributes can directly affect the ability of individuals to access organizational information. Thus, it is important for systems to be able to limit the ability to create or modify the type and value of attributes available for association with subjects and objects to authorized individuals only.
  GUIDANCE
  tag nist: ['AC-16 (10)']
  tag control: 'AC-16 (10)'
  tag objective: 'AC-16(10)[01]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_16_10: true

  describe 'NIST SP 800-53A Rev 5 objective AC-16(10)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
