control 'IR-6 (1)' do
  impact 0.5
  title 'Automated Reporting'
  desc <<~DESC
    Report incidents using #{input('ir_06_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-06(01) incidents are reported using #{input('ir_06_01_odp')}.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident reporting; automated mechanisms supporting incident reporting; system design documentation; system configuration settings and associated documentation; incident response plan; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident reporting responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for incident reporting; automated mechanisms supporting and/or implementing the reporting of security incidents
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The recipients of incident reports are specified in [IR-6b](#ir-6_smt.b) . Automated reporting mechanisms include email, posting on websites (with automatic updates), and automated incident response tools and programs.
  GUIDANCE
  tag nist: ['IR-6 (1)']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ir_06_01_odp}

  describe 'NIST SP 800-53 Rev 5 control IR-6 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
