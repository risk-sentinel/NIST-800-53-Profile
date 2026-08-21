control 'IA-08(04)' do
  impact 0.5
  title "there is conformance with #{input('ia_08_04_odp')} for identity management."
  desc <<~DESC
    Conform to the following profiles for identity management #{input('ia_08_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      there is conformance with #{input('ia_08_04_odp')} for identity management.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; organizational personnel with account management responsibilities
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities; mechanisms supporting and/or implementing conformance with profiles
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations define profiles for identity management based on open identity management standards. To ensure that open identity management standards are viable, robust, reliable, sustainable, and interoperable as documented, the Federal Government assesses and scopes the standards and technology implementations against applicable laws, executive orders, directives, policies, regulations, standards, and guidelines.
  GUIDANCE
  tag nist: ['IA-8 (4)']
  tag control: 'IA-8 (4)'
  tag objective: 'IA-08(04)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ia_8_4: true
  tag odp: %w{ia_08_04_odp}

  describe 'NIST SP 800-53A Rev 5 objective IA-08(04)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
