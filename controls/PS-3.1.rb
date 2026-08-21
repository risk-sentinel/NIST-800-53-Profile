control 'PS-3 (1)' do
  impact 0.5
  title 'Classified Information'
  desc <<~DESC
    Verify that individuals accessing a system processing, storing, or transmitting classified information are cleared and indoctrinated to the highest classification level of the information to which they have access on the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PS-03(01)[01] individuals accessing a system processing, storing, or transmitting classified information are cleared;
      PS-03(01)[02] individuals accessing a system processing, storing, or transmitting classified information are indoctrinated to the highest classification level of the information to which they have access on the system.

    Assessment methods and objects:
      EXAMINE: Personnel security policy; procedures addressing personnel screening; records of screened personnel; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for clearing and indoctrinating personnel for access to classified information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Classified information is the most sensitive information that the Federal Government processes, stores, or transmits. It is imperative that individuals have the requisite security clearances and system access authorizations prior to gaining access to such information. Access authorizations are enforced by system access controls (see [AC-3](#ac-3) ) and flow controls (see [AC-4](#ac-4)).
  GUIDANCE
  tag nist: ['PS-3 (1)']
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control PS-3 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
