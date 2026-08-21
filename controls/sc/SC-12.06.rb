control 'SC-12(06)' do
  impact 0.5
  title "physical control of cryptographic keys is maintained when stored information is encrypted by external service providers."
  desc <<~DESC
    Maintain physical control of cryptographic keys when stored information is encrypted by external service providers.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      physical control of cryptographic keys is maintained when stored information is encrypted by external service providers.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing cryptographic key establishment, management, and recovery; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for cryptographic key establishment or management
      TEST: Mechanisms supporting and/or implementing cryptographic key establishment and management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    For organizations that use external service providers (e.g., cloud service or data center providers), physical control of cryptographic keys provides additional assurance that information stored by such external providers is not subject to unauthorized disclosure or modification.
  GUIDANCE
  tag nist: ['SC-12 (6)']
  tag control: 'SC-12 (6)'
  tag objective: 'SC-12(06)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_12_6: true

  describe 'NIST SP 800-53A Rev 5 objective SC-12(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
