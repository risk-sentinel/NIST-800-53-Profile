control 'MP-02[01]' do
  impact 0.5
  title "access to #{input('mp_02_odp_01')} is restricted to #{input('mp_02_odp_02')};"
  desc <<~DESC
    Restrict access to #{input('mp_2_prm_1')} to #{input('mp_2_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      access to #{input('mp_02_odp_01')} is restricted to #{input('mp_02_odp_02')};

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media access restrictions; access control policy and procedures; physical and environmental protection policy and procedures; media storage facilities; access control records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media protection responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for restricting information media; mechanisms supporting and/or implementing media access restrictions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System media includes digital and non-digital media. Digital media includes flash drives, diskettes, magnetic tapes, external or removable hard disk drives (e.g., solid state, magnetic), compact discs, and digital versatile discs. Non-digital media includes paper and microfilm. Denying access to patient medical records in a community hospital unless the individuals seeking access to such records are authorized healthcare providers is an example of restricting access to non-digital media. Limiting access to the design specifications stored on compact discs in the media library to individuals on the system development team is an example of restricting access to digital media.
  GUIDANCE
  tag nist: ['MP-2']
  tag control: 'MP-2'
  tag objective: 'MP-02[01]'
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_mp_2: true
  tag odp: %w{mp_02_odp_01 mp_02_odp_02 mp_2_prm_1 mp_2_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective MP-02[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
