control 'MA-06(03)' do
  impact 0.5
  title "predictive maintenance data is transferred to a maintenance management system using #{input('ma_06_03_odp')}."
  desc <<~DESC
    Transfer predictive maintenance data to a maintenance management system using #{input('ma_06_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      predictive maintenance data is transferred to a maintenance management system using #{input('ma_06_03_odp')}.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing system maintenance; service provider contracts; service-level agreements; maintenance records; list of system components requiring predictive maintenance; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Automated mechanisms implementing the transfer of predictive maintenance data to a computerized maintenance management system; operations of the computer maintenance management system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A computerized maintenance management system maintains a database of information about the maintenance operations of organizations and automates the processing of equipment condition data to trigger maintenance planning, execution, and reporting.
  GUIDANCE
  tag nist: ['MA-6 (3)']
  tag control: 'MA-6 (3)'
  tag objective: 'MA-06(03)'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}
  tag control_ma_6_3: true
  tag odp: %w{ma_06_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective MA-06(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
