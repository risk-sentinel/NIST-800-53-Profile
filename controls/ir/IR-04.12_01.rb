control 'IR-04(12)[01]' do
  impact 0.5
  title "malicious code remaining in the system is analyzed after the incident;"
  desc <<~DESC
    Analyze malicious code and/or other residual artifacts remaining in the system after the incident.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      malicious code remaining in the system is analyzed after the incident;

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident handling; procedures addressing code and forensic analysis; procedures addressing incident response; incident response plan; system design documentation; malicious code protection mechanisms, tools, and techniques; results from malicious code analyses; system security plan; system audit records; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel with responsibility for malicious code protection; organizational personnel responsible for incident response/management
      TEST: Organizational process for incident response; organizational processes for conducting forensic analysis; tools and techniques for analysis of malicious code characteristics and behavior
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    When conducted carefully in an isolated environment, analysis of malicious code and other residual artifacts of a security incident or breach can give the organization insight into adversary tactics, techniques, and procedures. It can also indicate the identity or some defining characteristics of the adversary. In addition, malicious code analysis can help the organization develop responses to future incidents.
  GUIDANCE
  tag nist: ['IR-4 (12)']
  tag control: 'IR-4 (12)'
  tag objective: 'IR-04(12)[01]'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag control_ir_4_12: true

  describe 'NIST SP 800-53A Rev 5 objective IR-04(12)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
