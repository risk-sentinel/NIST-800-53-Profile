control 'PS-3 (4)' do
  impact 0.5
  title 'Citizenship Requirements'
  desc <<~DESC
    Verify that individuals accessing a system processing, storing, or transmitting #{input('ps_03_04_odp_01')} meet #{input('ps_03_04_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PS-03(04) individuals accessing a system processing, storing, or transmitting #{input('ps_03_04_odp_01')} meet #{input('ps_03_04_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Personnel security policy; access control policy, procedures addressing personnel screening; records of screened personnel; screening criteria; records of access authorizations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for ensuring valid access authorizations for information requiring citizenship; organizational process for additional personnel screening for information requiring citizenship
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['PS-3 (4)']
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{}
  tag odp: %w{ps_03_04_odp_01 ps_03_04_odp_02}

  describe 'NIST SP 800-53 Rev 5 control PS-3 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
