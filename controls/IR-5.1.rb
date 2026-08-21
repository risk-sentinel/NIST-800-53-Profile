control 'IR-5 (1)' do
  impact 0.5
  title 'Automated Tracking, Data Collection, and Analysis'
  desc <<~DESC
    Track incidents and collect and analyze incident information using #{input('ir_5_1_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-05(01)[01] incidents are tracked using #{input('ir_05_01_odp_01')};
      IR-05(01)[02] incident information is collected using #{input('ir_05_01_odp_02')};
      IR-05(01)[03] incident information is analyzed using #{input('ir_05_01_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident monitoring; incident response records and documentation; system security plan; incident response plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident monitoring responsibilities; organizational personnel with information security responsibilities
      TEST: Incident monitoring capability for the organization; automated mechanisms supporting and/or implementing the tracking and documenting of system security incidents
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms for tracking incidents and collecting and analyzing incident information include Computer Incident Response Centers or other electronic databases of incidents and network monitoring devices.
  GUIDANCE
  tag nist: ['IR-5 (1)']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{ir_05_01_odp_01 ir_05_01_odp_02 ir_05_01_odp_03 ir_5_1_prm_1}

  describe 'NIST SP 800-53 Rev 5 control IR-5 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
