control 'MA-06(02)' do
  impact 0.5
  title "predictive maintenance is performed on #{input('ma_06_02_odp_01')} at #{input('ma_06_02_odp_02')}."
  desc <<~DESC
    Perform predictive maintenance on #{input('ma_06_02_odp_01')} at #{input('ma_06_02_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      predictive maintenance is performed on #{input('ma_06_02_odp_01')} at #{input('ma_06_02_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing system maintenance; service provider contracts; service-level agreements; maintenance records; list of system components requiring predictive maintenance; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for predictive maintenance; mechanisms supporting and/or implementing predictive maintenance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Predictive maintenance evaluates the condition of equipment by performing periodic or continuous (online) equipment condition monitoring. The goal of predictive maintenance is to perform maintenance at a scheduled time when the maintenance activity is most cost-effective and before the equipment loses performance within a threshold. The predictive component of predictive maintenance stems from the objective of predicting the future trend of the equipment's condition. The predictive maintenance approach employs principles of statistical process control to determine at what point in the future maintenance activities will be appropriate. Most predictive maintenance inspections are performed while equipment is in service, thus minimizing disruption of normal system operations. Predictive maintenance can result in substantial cost savings and higher system reliability.
  GUIDANCE
  tag nist: ['MA-6 (2)']
  tag control: 'MA-6 (2)'
  tag objective: 'MA-06(02)'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}
  tag control_ma_6_2: true
  tag odp: %w{ma_06_02_odp_01 ma_06_02_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective MA-06(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
