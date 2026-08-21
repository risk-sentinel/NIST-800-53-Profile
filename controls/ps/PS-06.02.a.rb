control 'PS-06(02)(a)' do
  impact 0.5
  title "access to classified information requiring special protection is granted only to individuals who have a valid access authorization that is demonstrated by assigned official government duties;"
  desc <<~DESC
    Verify that access to classified information requiring special protection is granted only to individuals who:
      (a) Have a valid access authorization that is demonstrated by assigned official government duties;
      (b) Satisfy associated personnel security criteria; and
      (c) Have read, understood, and signed a nondisclosure agreement.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      access to classified information requiring special protection is granted only to individuals who have a valid access authorization that is demonstrated by assigned official government duties;

    Assessment methods and objects:
      EXAMINE: Personnel security policy; procedures addressing access agreements for organizational information and systems; access agreements; access authorizations; personnel security criteria; signed non-disclosure agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel who have signed non-disclosure agreements; organizational personnel with information security responsibilities
      TEST: Organizational processes for access to classified information requiring special protection
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Classified information that requires special protection includes collateral information, Special Access Program (SAP) information, and Sensitive Compartmented Information (SCI). Personnel security criteria reflect applicable laws, executive orders, directives, regulations, policies, standards, and guidelines.
  GUIDANCE
  tag nist: ['PS-6 (2)']
  tag control: 'PS-6 (2)'
  tag objective: 'PS-06(02)(a)'
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{}
  tag control_ps_6_2: true

  describe 'NIST SP 800-53A Rev 5 objective PS-06(02)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
