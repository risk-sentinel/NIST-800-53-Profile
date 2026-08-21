control 'IR-07(01)' do
  impact 0.5
  title "the availability of incident response information and support is increased using #{input('ir_07_01_odp')}."
  desc <<~DESC
    Increase the availability of incident response information and support using #{input('ir_07_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the availability of incident response information and support is increased using #{input('ir_07_01_odp')}.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident response assistance; automated mechanisms supporting incident response support and assistance; system design documentation; system configuration settings and associated documentation; incident response plan; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response support and assistance responsibilities; organizational personnel with access to incident response support and assistance capability; organizational personnel with information security responsibilities
      TEST: Organizational processes for incident response assistance; automated mechanisms supporting and/or implementing an increase in the availability of incident response information and support
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms can provide a push or pull capability for users to obtain incident response assistance. For example, individuals may have access to a website to query the assistance capability, or the assistance capability can proactively send incident response information to users (general distribution or targeted) as part of increasing understanding of current response capabilities and support.
  GUIDANCE
  tag nist: ['IR-7 (1)']
  tag control: 'IR-7 (1)'
  tag objective: 'IR-07(01)'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ir_7_1: true
  tag odp: %w{ir_07_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective IR-07(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
