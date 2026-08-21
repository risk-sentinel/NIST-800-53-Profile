control 'IA-05(06)' do
  impact 0.5
  title "authenticators are protected commensurate with the security category of the information to which use of the authenticator permits access."
  desc <<~DESC
    Protect authenticators commensurate with the security category of the information to which use of the authenticator permits access.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      authenticators are protected commensurate with the security category of the information to which use of the authenticator permits access.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing authenticator management; security categorization documentation for the system; security assessments of authenticator protections; risk assessment results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with authenticator management responsibilities; organizational personnel implementing and/or maintaining authenticator protections; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms supporting and/or implementing authenticator management capability; mechanisms protecting authenticators
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    For systems that contain multiple security categories of information without reliable physical or logical separation between categories, authenticators used to grant access to the systems are protected commensurate with the highest security category of information on the systems. Security categories of information are determined as part of the security categorization process.
  GUIDANCE
  tag nist: ['IA-5 (6)']
  tag control: 'IA-5 (6)'
  tag objective: 'IA-05(06)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ia_5_6: true

  describe 'NIST SP 800-53A Rev 5 objective IA-05(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
