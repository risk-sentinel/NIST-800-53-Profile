control 'AC-17 (6)' do
  impact 0.5
  title 'Protection of Mechanism Information'
  desc <<~DESC
    Protect information about remote access mechanisms from unauthorized use and disclosure.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-17(06) information about remote access mechanisms is protected from unauthorized use and disclosure.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing remote access to the system; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for implementing or monitoring remote access to the system; system users with knowledge of information about remote access mechanisms; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Remote access to organizational information by non-organizational entities can increase the risk of unauthorized use and disclosure about remote access mechanisms. The organization considers including remote access requirements in the information exchange agreements with other organizations, as applicable. Remote access requirements can also be included in rules of behavior (see [PL-4](#pl-4) ) and access agreements (see [PS-6](#ps-6)).
  GUIDANCE
  tag nist: ['AC-17 (6)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AC-17 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
