control 'PS-03(03)(b)' do
  impact 0.5
  title "individuals accessing a system processing, storing, or transmitting information requiring special protection satisfy #{input('ps_03_03_odp')}."
  desc <<~DESC
    Verify that individuals accessing a system processing, storing, or transmitting information requiring special protection:
      (a) Have valid access authorizations that are demonstrated by assigned official government duties; and
      (b) Satisfy #{input('ps_03_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      individuals accessing a system processing, storing, or transmitting information requiring special protection satisfy #{input('ps_03_03_odp')}.

    Assessment methods and objects:
      EXAMINE: Personnel security policy; access control policy, procedures addressing personnel screening; records of screened personnel; screening criteria; records of access authorizations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for ensuring valid access authorizations for information requiring special protection; organizational process for additional personnel screening for information requiring special protection
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizational information that requires special protection includes controlled unclassified information. Personnel security criteria include position sensitivity background screening requirements.
  GUIDANCE
  tag nist: ['PS-3 (3)']
  tag control: 'PS-3 (3)'
  tag objective: 'PS-03(03)(b)'
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{}
  tag control_ps_3_3: true
  tag odp: %w{ps_03_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective PS-03(03)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
