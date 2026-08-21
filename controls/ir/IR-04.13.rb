control 'IR-04(13)' do
  impact 0.5
  title "anomalous or suspected adversarial behavior in or related to #{input('ir_04_13_odp')} are analyzed."
  desc <<~DESC
    Analyze anomalous or suspected adversarial behavior in or related to #{input('ir_04_13_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      anomalous or suspected adversarial behavior in or related to #{input('ir_04_13_odp')} are analyzed.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing system monitoring tools and techniques; incident response plan; system monitoring logs or records; system monitoring tools and techniques documentation; system configuration settings and associated documentation; security plan; system component inventory; network diagram; system protocols documentation; list of acceptable thresholds for false positives and false negatives; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for detecting anomalous behavior
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    If the organization maintains a deception environment, an analysis of behaviors in that environment, including resources targeted by the adversary and timing of the incident or event, can provide insight into adversarial tactics, techniques, and procedures. External to a deception environment, the analysis of anomalous adversarial behavior (e.g., changes in system performance or usage patterns) or suspected behavior (e.g., changes in searches for the location of specific resources) can give the organization such insight.
  GUIDANCE
  tag nist: ['IR-4 (13)']
  tag control: 'IR-4 (13)'
  tag objective: 'IR-04(13)'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag control_ir_4_13: true
  tag odp: %w{ir_04_13_odp}

  describe 'NIST SP 800-53A Rev 5 objective IR-04(13)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
