control 'PS-4 (1)' do
  impact 0.5
  title 'Post-employment Requirements'
  desc <<~DESC
    (a) Notify terminated individuals of applicable, legally binding post-employment requirements for the protection of organizational information; and
    (b) Require terminated individuals to sign an acknowledgment of post-employment requirements as part of the organizational termination process.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PS-04(01)(a) terminated individuals are notified of applicable, legally binding post-employment requirements for the protection of organizational information;
      PS-04(01)(b) terminated individuals are required to sign an acknowledgement of post-employment requirements as part of the organizational termination process.

    Assessment methods and objects:
      EXAMINE: Personnel security policy; procedures addressing personnel termination; signed post-employment acknowledgement forms; list of applicable, legally binding post-employment requirements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for post-employment requirements
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations consult with the Office of the General Counsel regarding matters of post-employment requirements on terminated individuals.
  GUIDANCE
  tag nist: ['PS-4 (1)']
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control PS-4 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
