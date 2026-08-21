control 'IA-12(01)' do
  impact 0.5
  title "the registration process to receive an account for logical access includes supervisor or sponsor authorization."
  desc <<~DESC
    Require that the registration process to receive an account for logical access includes supervisor or sponsor authorization.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the registration process to receive an account for logical access includes supervisor or sponsor authorization.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identity proofing; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; organizational personnel with identification and authentication responsibilities
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Including supervisor or sponsor authorization as part of the registration process provides an additional level of scrutiny to ensure that the user’s management chain is aware of the account, the account is essential to carry out organizational missions and functions, and the user’s privileges are appropriate for the anticipated responsibilities and authorities within the organization.
  GUIDANCE
  tag nist: ['IA-12 (1)']
  tag control: 'IA-12 (1)'
  tag objective: 'IA-12(01)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_12_1: true

  describe 'NIST SP 800-53A Rev 5 objective IA-12(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
