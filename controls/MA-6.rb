control 'MA-6' do
  impact 0.5
  title 'Timely Maintenance'
  desc <<~DESC
    Obtain maintenance support and/or spare parts for #{input('ma_06_odp_01')} within #{input('ma_06_odp_02')} of failure.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-06 maintenance support and/or spare parts are obtained for #{input('ma_06_odp_01')} within #{input('ma_06_odp_02')} of failure.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing system maintenance; service provider contracts; service-level agreements; inventory and availability of spare parts; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with acquisition responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for ensuring timely maintenance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations specify the system components that result in increased risk to organizational operations and assets, individuals, other organizations, or the Nation when the functionality provided by those components is not operational. Organizational actions to obtain maintenance support include having appropriate contracts in place.
  GUIDANCE
  tag nist: ['MA-6']
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ma_06_odp_01 ma_06_odp_02}

  describe 'NIST SP 800-53 Rev 5 control MA-6' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
