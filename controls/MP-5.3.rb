control 'MP-5 (3)' do
  impact 0.5
  title 'Custodians'
  desc <<~DESC
    Employ an identified custodian during transport of system media outside of controlled areas.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MP-05(03)[01] a custodian to transport system media outside of controlled areas is identified;
      MP-05(03)[02] the identified custodian is employed during the transport of system media outside of controlled areas.

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media transport; physical and environmental protection policy and procedures; system media transport records; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media transport responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for identifying and employing a custodian to transport media outside of controlled areas
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Identified custodians provide organizations with specific points of contact during the media transport process and facilitate individual accountability. Custodial responsibilities can be transferred from one individual to another if an unambiguous custodian is identified.
  GUIDANCE
  tag nist: ['MP-5 (3)']
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control MP-5 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
