control 'MP-6 (2)' do
  impact 0.5
  title 'Equipment Testing'
  desc <<~DESC
    Test sanitization equipment and procedures #{input('mp_6_2_prm_1')} to ensure that the intended sanitization is being achieved.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MP-06(02)[01] sanitization equipment is tested #{input('mp_06_02_odp_01')} to ensure that the intended sanitization is being achieved;
      MP-06(02)[02] sanitization procedures are tested #{input('mp_06_02_odp_02')} to ensure that the intended sanitization is being achieved.

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media sanitization and disposal; procedures addressing testing of media sanitization equipment; results of media sanitization equipment and procedures testing; system audit records; records retention and disposition policy; records retention and disposition procedures; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media sanitization responsibilities; organizational personnel with records retention and disposition responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for media sanitization; automated mechanisms supporting and/or implementing media sanitization; automated mechanisms supporting and/or implementing media sanitization procedures; sanitization equipment
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Testing of sanitization equipment and procedures may be conducted by qualified and authorized external entities, including federal agencies or external service providers.
  GUIDANCE
  tag nist: ['MP-6 (2)']
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{mp_06_02_odp_01 mp_06_02_odp_02 mp_6_2_prm_1}

  describe 'NIST SP 800-53 Rev 5 control MP-6 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
