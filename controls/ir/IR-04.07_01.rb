control 'IR-04(07)[01]' do
  impact 0.5
  title "an incident handling capability is coordinated for insider threats;"
  desc <<~DESC
    Coordinate an incident handling capability for insider threats that includes the following organizational entities #{input('ir_04_07_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an incident handling capability is coordinated for insider threats;

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident handling; incident response plan; insider threat program plan; insider threat CONOPS; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel/elements with whom the incident handling capability is to be coordinated
      TEST: Organizational processes for coordinating incident handling
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Incident handling for insider threat incidents (e.g., preparation, detection and analysis, containment, eradication, and recovery) requires coordination among many organizational entities, including mission or business owners, system owners, human resources offices, procurement offices, personnel offices, physical security offices, senior agency information security officer, operations personnel, risk executive (function), senior agency official for privacy, and legal counsel. In addition, organizations may require external support from federal, state, and local law enforcement agencies.
  GUIDANCE
  tag nist: ['IR-4 (7)']
  tag control: 'IR-4 (7)'
  tag objective: 'IR-04(07)[01]'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag control_ir_4_7: true
  tag odp: %w{ir_04_07_odp}

  describe 'NIST SP 800-53A Rev 5 objective IR-04(07)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
