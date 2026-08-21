control 'PS-06(03)(a)' do
  impact 0.5
  title "individuals are notified of applicable, legally binding post-employment requirements for the protection of organizational information;"
  desc <<~DESC
    (a) Notify individuals of applicable, legally binding post-employment requirements for protection of organizational information; and
    (b) Require individuals to sign an acknowledgment of these requirements, if applicable, as part of granting initial access to covered information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      individuals are notified of applicable, legally binding post-employment requirements for the protection of organizational information;

    Assessment methods and objects:
      EXAMINE: Personnel security policy; procedures addressing access agreements for organizational information and systems; signed post-employment acknowledgement forms; access agreements; list of applicable, legally binding post-employment requirements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel who have signed access agreements that include post-employment requirements; organizational personnel with information security responsibilities
      TEST: Organizational processes for post-employment requirements; mechanisms supporting notifications and individual acknowledgements of post-employment requirements
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations consult with the Office of the General Counsel regarding matters of post-employment requirements on terminated individuals.
  GUIDANCE
  tag nist: ['PS-6 (3)']
  tag control: 'PS-6 (3)'
  tag objective: 'PS-06(03)(a)'
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{}
  tag control_ps_6_3: true

  describe 'NIST SP 800-53A Rev 5 objective PS-06(03)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
