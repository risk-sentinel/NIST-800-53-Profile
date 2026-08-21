control 'SI-03(04)' do
  impact 0.5
  title "malicious code protection mechanisms are updated only when directed by a privileged user."
  desc <<~DESC
    Update malicious code protection mechanisms only when directed by a privileged user.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      malicious code protection mechanisms are updated only when directed by a privileged user.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing malicious code protection; list of privileged users on system; system design documentation; malicious code protection mechanisms; records of malicious code protection updates; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for malicious code protection
      TEST: Mechanisms supporting and/or implementing malicious code protection capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Protection mechanisms for malicious code are typically categorized as security-related software and, as such, are only updated by organizational personnel with appropriate access privileges.
  GUIDANCE
  tag nist: ['SI-3 (4)']
  tag control: 'SI-3 (4)'
  tag objective: 'SI-03(04)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_3_4: true

  describe 'NIST SP 800-53A Rev 5 objective SI-03(04)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
