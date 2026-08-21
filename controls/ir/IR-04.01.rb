control 'IR-04(01)' do
  impact 0.5
  title "the incident handling process is supported using #{input('ir_04_01_odp')}."
  desc <<~DESC
    Support the incident handling process using #{input('ir_04_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the incident handling process is supported using #{input('ir_04_01_odp')}.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident handling; automated mechanisms supporting incident handling; system design documentation; system configuration settings and associated documentation; system audit records; incident response plan; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with information security responsibilities
      TEST: Automated mechanisms that support and/or implement the incident handling process
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms that support incident handling processes include online incident management systems and tools that support the collection of live response data, full network packet capture, and forensic analysis.
  GUIDANCE
  tag nist: ['IR-4 (1)']
  tag control: 'IR-4 (1)'
  tag objective: 'IR-04(01)'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ir_4_1: true
  tag odp: %w{ir_04_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective IR-04(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
