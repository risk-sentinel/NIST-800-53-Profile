control 'IA-05(15)' do
  impact 0.5
  title "only General Services Administration-approved products and services are used for identity, credential, and access management."
  desc <<~DESC
    Use only General Services Administration-approved products and services for identity, credential, and access management.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      only General Services Administration-approved products and services are used for identity, credential, and access management.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identifier management; system security plan; system design documentation; mechanisms providing dynamic binding of identifiers and authenticators; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with identification and authentication management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms supporting and/or implementing account management capability; mechanisms supporting and/or implementing identification and authentication management capabilities for the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    General Services Administration (GSA)-approved products and services are products and services that have been approved through the GSA conformance program, where applicable, and posted to the GSA Approved Products List. GSA provides guidance for teams to design and build functional and secure systems that comply with Federal Identity, Credential, and Access Management (FICAM) policies, technologies, and implementation patterns.
  GUIDANCE
  tag nist: ['IA-5 (15)']
  tag control: 'IA-5 (15)'
  tag objective: 'IA-05(15)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_5_15: true

  describe 'NIST SP 800-53A Rev 5 objective IA-05(15)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
