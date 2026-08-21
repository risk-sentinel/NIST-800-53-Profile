control 'IA-4 (4)' do
  impact 0.5
  title 'Identify User Status'
  desc <<~DESC
    Manage individual identifiers by uniquely identifying each individual as #{input('ia_04_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-04(04) individual identifiers are managed by uniquely identifying each individual as #{input('ia_04_04_odp')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing identifier management; procedures addressing account management; list of characteristics identifying individual status; other relevant documents or records
      INTERVIEW: Organizational personnel with identifier management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms supporting and/or implementing identifier management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Characteristics that identify the status of individuals include contractors, foreign nationals, and non-organizational users. Identifying the status of individuals by these characteristics provides additional information about the people with whom organizational personnel are communicating. For example, it might be useful for a government employee to know that one of the individuals on an email message is a contractor.
  GUIDANCE
  tag nist: ['IA-4 (4)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ia_04_04_odp}

  describe 'NIST SP 800-53 Rev 5 control IA-4 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
