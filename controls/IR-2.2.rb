control 'IR-2 (2)' do
  impact 0.5
  title 'Automated Training Environments'
  desc <<~DESC
    Provide an incident response training environment using #{input('ir_02_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-02(02) an incident response training environment is provided using #{input('ir_02_02_odp')}.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident response training; incident response training curriculum; incident response training materials; automated mechanisms supporting incident response training; incident response plan; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response training and operational responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Automated mechanisms that provide a thorough and realistic incident response training environment
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms can provide a more thorough and realistic incident response training environment. This can be accomplished, for example, by providing more complete coverage of incident response issues, selecting more realistic training scenarios and environments, and stressing the response capability.
  GUIDANCE
  tag nist: ['IR-2 (2)']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{ir_02_02_odp}

  describe 'NIST SP 800-53 Rev 5 control IR-2 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
