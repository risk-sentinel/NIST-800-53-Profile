control 'CM-04(02)[02]' do
  impact 0.5
  title "the impacted controls are implemented correctly with regard to meeting the privacy requirements for the system after system changes;"
  desc <<~DESC
    After system changes, verify that the impacted controls are implemented correctly, operating as intended, and producing the desired outcome with regard to meeting the security and privacy requirements for the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the impacted controls are implemented correctly with regard to meeting the privacy requirements for the system after system changes;

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing security impact analyses for changes to the system; procedures addressing privacy impact analyses for changes to the system; privacy risk assessment documentation; configuration management plan; security and privacy impact analysis documentation; privacy impact assessment; analysis tools and associated outputs; change control records; control assessment results; system audit records; system component inventory; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibility for conducting security and privacy impact analyses; organizational personnel with information security and privacy responsibilities; system/network administrators; security and privacy assessors
      TEST: Organizational processes for security and privacy impact analyses; mechanisms supporting and/or implementing security and privacy impact analyses of changes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Implementation in this context refers to installing changed code in the operational system that may have an impact on security or privacy controls.
  GUIDANCE
  tag nist: ['CM-4 (2)']
  tag control: 'CM-4 (2)'
  tag objective: 'CM-04(02)[02]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_4_2: true

  describe 'NIST SP 800-53A Rev 5 objective CM-04(02)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
