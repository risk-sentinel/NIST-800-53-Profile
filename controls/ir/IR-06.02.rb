control 'IR-06(02)' do
  impact 0.5
  title "system vulnerabilities associated with reported incidents are reported to #{input('ir_06_02_odp')}."
  desc <<~DESC
    Report system vulnerabilities associated with reported incidents to #{input('ir_06_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system vulnerabilities associated with reported incidents are reported to #{input('ir_06_02_odp')}.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident reporting; incident response plan; system security plan; privacy plan; security incident reports and associated system vulnerabilities; other relevant documents or records
      INTERVIEW: Organizational personnel with incident reporting responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; personnel to whom vulnerabilities associated with security incidents are to be reported
      TEST: Organizational processes for incident reporting; mechanisms supporting and/or implementing the reporting of vulnerabilities associated with security incidents
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Reported incidents that uncover system vulnerabilities are analyzed by organizational personnel including system owners, mission and business owners, senior agency information security officers, senior agency officials for privacy, authorizing officials, and the risk executive (function). The analysis can serve to prioritize and initiate mitigation actions to address the discovered system vulnerability.
  GUIDANCE
  tag nist: ['IR-6 (2)']
  tag control: 'IR-6 (2)'
  tag objective: 'IR-06(02)'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag control_ir_6_2: true
  tag odp: %w{ir_06_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective IR-06(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
