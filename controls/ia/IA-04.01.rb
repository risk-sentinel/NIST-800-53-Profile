control 'IA-04(01)' do
  impact 0.5
  title "the use of system account identifiers that are the same as public identifiers is prohibited for individual accounts."
  desc <<~DESC
    Prohibit the use of system account identifiers that are the same as public identifiers for individual accounts.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the use of system account identifiers that are the same as public identifiers is prohibited for individual accounts.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing identifier management; procedures addressing account management; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with identifier management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms supporting and/or implementing identifier management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Prohibiting account identifiers as public identifiers applies to any publicly disclosed account identifier used for communication such as, electronic mail and instant messaging. Prohibiting the use of systems account identifiers that are the same as some public identifier, such as the individual identifier section of an electronic mail address, makes it more difficult for adversaries to guess user identifiers. Prohibiting account identifiers as public identifiers without the implementation of other supporting controls only complicates guessing of identifiers. Additional protections are required for authenticators and credentials to protect the account.
  GUIDANCE
  tag nist: ['IA-4 (1)']
  tag control: 'IA-4 (1)'
  tag objective: 'IA-04(01)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_4_1: true

  describe 'NIST SP 800-53A Rev 5 objective IA-04(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
