control 'MP-06(08)' do
  impact 0.5
  title "the capability to purge or wipe information from #{input('mp_06_08_odp_01')} #{input('mp_06_08_odp_02')} is provided."
  desc <<~DESC
    Provide the capability to purge or wipe information from #{input('mp_06_08_odp_01')} #{input('mp_06_08_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the capability to purge or wipe information from #{input('mp_06_08_odp_01')} #{input('mp_06_08_odp_02')} is provided.

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media sanitization and disposal; system design documentation; system configuration settings and associated documentation; authorization records; media sanitization records; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media sanitization responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for purging/wiping media; mechanisms supporting and/or implementing purge/wipe capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Remote purging or wiping of information protects information on organizational systems and system components if systems or components are obtained by unauthorized individuals. Remote purge or wipe commands require strong authentication to help mitigate the risk of unauthorized individuals purging or wiping the system, component, or device. The purge or wipe function can be implemented in a variety of ways, including by overwriting data or information multiple times or by destroying the key necessary to decrypt encrypted data.
  GUIDANCE
  tag nist: ['MP-6 (8)']
  tag control: 'MP-6 (8)'
  tag objective: 'MP-06(08)'
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{}
  tag control_mp_6_8: true
  tag odp: %w{mp_06_08_odp_01 mp_06_08_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective MP-06(08)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
