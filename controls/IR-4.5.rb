control 'IR-4 (5)' do
  impact 0.5
  title 'Automatic Disabling of System'
  desc <<~DESC
    Implement a configurable capability to automatically disable the system if #{input('ir_04_05_odp')} are detected.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-04(05) a configurable capability is implemented to automatically disable the system if #{input('ir_04_05_odp')} are detected.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident handling; automated mechanisms supporting incident handling; system design documentation; system configuration settings and associated documentation; system security plan; incident response plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with information security responsibilities; system developers
      TEST: Incident handling capability for the organization; automated mechanisms supporting and/or implementing automatic disabling of the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations consider whether the capability to automatically disable the system conflicts with continuity of operations requirements specified as part of [CP-2](#cp-2) or [IR-4(3)](#ir-4.3) . Security violations include cyber-attacks that have compromised the integrity of the system or exfiltrated organizational information and serious errors in software programs that could adversely impact organizational missions or functions or jeopardize the safety of individuals.
  GUIDANCE
  tag nist: ['IR-4 (5)']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag odp: %w{ir_04_05_odp}

  describe 'NIST SP 800-53 Rev 5 control IR-4 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
