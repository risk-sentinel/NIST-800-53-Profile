control 'MP-8 (2)' do
  impact 0.5
  title 'Equipment Testing'
  desc <<~DESC
    Test downgrading equipment and procedures #{input('mp_8_2_prm_1')} to ensure that downgrading actions are being achieved.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MP-08(02)[01] downgrading equipment is tested #{input('mp_08_02_odp_01')} to ensure that downgrading actions are being achieved;
      MP-08(02)[02] downgrading procedures are tested #{input('mp_08_02_odp_02')} to ensure that downgrading actions are being achieved.

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media downgrading; procedures addressing testing of media downgrading equipment; results of downgrading equipment and procedures testing; records of media downgrading; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media downgrading responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for media downgrading; mechanisms supporting and/or implementing media downgrading
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['MP-8 (2)']
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{}
  tag odp: %w{mp_08_02_odp_01 mp_08_02_odp_02 mp_8_2_prm_1}

  describe 'NIST SP 800-53 Rev 5 control MP-8 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
