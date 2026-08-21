control 'MA-02(02)(b)[01]' do
  impact 0.5
  title "up-to date, accurate, and complete records of all maintenance actions requested, scheduled, in process, and completed are produced."
  desc <<~DESC
    (a) Schedule, conduct, and document maintenance, repair, and replacement actions for the system using #{input('ma_2_2_prm_1')} ; and
    (b) Produce up-to date, accurate, and complete records of all maintenance, repair, and replacement actions requested, scheduled, in process, and completed.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      up-to date, accurate, and complete records of all maintenance actions requested, scheduled, in process, and completed are produced.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing controlled system maintenance; automated mechanisms supporting system maintenance activities; system configuration settings and associated documentation; maintenance records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Automated mechanisms supporting and/or implementing controlled maintenance; automated mechanisms supporting and/or implementing the production of records of maintenance and repair actions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The use of automated mechanisms to manage and control system maintenance programs and activities helps to ensure the generation of timely, accurate, complete, and consistent maintenance records.
  GUIDANCE
  tag nist: ['MA-2 (2)']
  tag control: 'MA-2 (2)'
  tag objective: 'MA-02(02)(b)[01]'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_ma_2_2: true
  tag odp: %w{ma_2_2_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective MA-02(02)(b)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
