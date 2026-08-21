control 'IR-3 (1)' do
  impact 0.5
  title 'Automated Testing'
  desc <<~DESC
    Test the incident response capability using #{input('ir_03_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-03(01) the incident response capability is tested using #{input('ir_03_01_odp')}.

    Assessment methods and objects:
      EXAMINE: Incident response policy; contingency planning policy; procedures addressing incident response testing; procedures addressing contingency plan testing; incident response testing documentation; incident response test results; incident response test plan; incident response plan; contingency plan; system security plan; automated mechanisms supporting incident response tests; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response testing responsibilities; organizational personnel with information security responsibilities
      TEST: Automated mechanisms that more thoroughly and effectively test the incident response capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations use automated mechanisms to more thoroughly and effectively test incident response capabilities. This can be accomplished by providing more complete coverage of incident response issues, selecting realistic test scenarios and environments, and stressing the response capability.
  GUIDANCE
  tag nist: ['IR-3 (1)']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag odp: %w{ir_03_01_odp}

  describe 'NIST SP 800-53 Rev 5 control IR-3 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
