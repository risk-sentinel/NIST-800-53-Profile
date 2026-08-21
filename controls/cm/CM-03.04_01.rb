control 'CM-03(04)[01]' do
  impact 0.5
  title "#{input('cm_03_04_odp_01')} are required to be members of the #{input('cm_03_04_odp_03')};"
  desc <<~DESC
    Require #{input('cm_3_4_prm_1')} to be members of the #{input('cm_03_04_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('cm_03_04_odp_01')} are required to be members of the #{input('cm_03_04_odp_03')};

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system configuration change control; configuration management plan; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration change control responsibilities; organizational personnel with information security and privacy responsibilities; members of change control board or similar
      TEST: Organizational processes for configuration change control
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information security and privacy representatives include system security officers, senior agency information security officers, senior agency officials for privacy, or system privacy officers. Representation by personnel with information security and privacy expertise is important because changes to system configurations can have unintended side effects, some of which may be security- or privacy-relevant. Detecting such changes early in the process can help avoid unintended, negative consequences that could ultimately affect the security and privacy posture of systems. The configuration change control element referred to in the second organization-defined parameter reflects the change control elements defined by organizations in [CM-3g](#cm-3_smt.g).
  GUIDANCE
  tag nist: ['CM-3 (4)']
  tag control: 'CM-3 (4)'
  tag objective: 'CM-03(04)[01]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_3_4: true
  tag odp: %w{cm_03_04_odp_01 cm_03_04_odp_03 cm_3_4_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective CM-03(04)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
