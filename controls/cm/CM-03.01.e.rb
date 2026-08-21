control 'CM-03(01)(e)' do
  impact 0.5
  title "#{input('cm_03_01_odp_01')} are used to document all changes to the system;"
  desc <<~DESC
    Use #{input('cm_03_01_odp_01')} to:
      (a) Document proposed changes to the system;
      (b) Notify #{input('cm_03_01_odp_02')} of proposed changes to the system and request change approval;
      (c) Highlight proposed changes to the system that have not been approved or disapproved within #{input('cm_03_01_odp_03')};
      (d) Prohibit changes to the system until designated approvals are received;
      (e) Document all changes to the system; and
      (f) Notify #{input('cm_03_01_odp_04')} when approved changes to the system are completed.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('cm_03_01_odp_01')} are used to document all changes to the system;

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system configuration change control; configuration management plan; system design documentation; system architecture and configuration documentation; automated configuration control mechanisms; system configuration settings and associated documentation; change control records; system audit records; change approval requests; change approvals; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration change control responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; members of change control board or similar
      TEST: Organizational processes for configuration change control; automated mechanisms implementing configuration change control activities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['CM-3 (1)']
  tag control: 'CM-3 (1)'
  tag objective: 'CM-03(01)(e)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_cm_3_1: true
  tag odp: %w{cm_03_01_odp_01 cm_03_01_odp_02 cm_03_01_odp_03 cm_03_01_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective CM-03(01)(e)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
