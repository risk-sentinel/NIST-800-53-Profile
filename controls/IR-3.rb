control 'IR-3' do
  impact 0.5
  title 'Incident Response Testing'
  desc <<~DESC
    Test the effectiveness of the incident response capability for the system #{input('ir_03_odp_01')} using the following tests: #{input('ir_03_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-03 the effectiveness of the incident response capability for the system is tested #{input('ir_03_odp_01')} using #{input('ir_03_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Incident response policy; contingency planning policy; procedures addressing incident response testing; procedures addressing contingency plan testing; incident response testing material; incident response test results; incident response test plan; incident response plan; contingency plan; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response testing responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations test incident response capabilities to determine their effectiveness and identify potential weaknesses or deficiencies. Incident response testing includes the use of checklists, walk-through or tabletop exercises, and simulations (parallel or full interrupt). Incident response testing can include a determination of the effects on organizational operations and assets and individuals due to incident response. The use of qualitative and quantitative data aids in determining the effectiveness of incident response processes.
  GUIDANCE
  tag nist: ['IR-3']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{MODERATE HIGH PRIVACY}
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag odp: %w{ir_03_odp_01 ir_03_odp_02}

  describe 'NIST SP 800-53 Rev 5 control IR-3' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
