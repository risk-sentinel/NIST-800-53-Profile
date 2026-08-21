control 'MP-04(02)[01]' do
  impact 0.5
  title "access to media storage areas is restricted using #{input('mp_04_02_odp_01')};"
  desc <<~DESC
    Restrict access to media storage areas and log access attempts and access granted using #{input('mp_4_2_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      access to media storage areas is restricted using #{input('mp_04_02_odp_01')};

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media storage; access control policy and procedures; physical and environmental protection policy and procedures; system design documentation; system configuration settings and associated documentation; media storage facilities; access control devices; access control records; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media protection and storage responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Automated mechanisms restricting access to media storage areas; automated mechanisms auditing access attempts and access granted to media storage areas
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms include keypads, biometric readers, or card readers on the external entries to media storage areas.
  GUIDANCE
  tag nist: ['MP-4 (2)']
  tag control: 'MP-4 (2)'
  tag objective: 'MP-04(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{}
  tag control_mp_4_2: true
  tag odp: %w{mp_04_02_odp_01 mp_4_2_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective MP-04(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
