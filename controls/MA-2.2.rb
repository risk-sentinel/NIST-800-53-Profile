control 'MA-2 (2)' do
  impact 0.5
  title 'Automated Maintenance Activities'
  desc <<~DESC
    (a) Schedule, conduct, and document maintenance, repair, and replacement actions for the system using #{input('ma_2_2_prm_1')} ; and
    (b) Produce up-to date, accurate, and complete records of all maintenance, repair, and replacement actions requested, scheduled, in process, and completed.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-02(02)(a)
        MA-02(02)(a)[01] #{input('ma_02_02_odp_01')} are used to schedule maintenance, repair, and replacement actions for the system;
        MA-02(02)(a)[02] #{input('ma_02_02_odp_02')} are used to conduct maintenance, repair, and replacement actions for the system;
        MA-02(02)(a)[03] #{input('ma_02_02_odp_03')} are used to document maintenance, repair, and replacement actions for the system;
      MA-02(02)(b)
        MA-02(02)(b)[01] up-to date, accurate, and complete records of all maintenance actions requested, scheduled, in process, and completed are produced.
        MA-02(02)(b)[02] up-to date, accurate, and complete records of all repair actions requested, scheduled, in process, and completed are produced.
        MA-02(02)(b)[03] up-to date, accurate, and complete records of all replacement actions requested, scheduled, in process, and completed are produced.

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
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{ma_02_02_odp_01 ma_02_02_odp_02 ma_02_02_odp_03 ma_2_2_prm_1}

  describe 'NIST SP 800-53 Rev 5 control MA-2 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
