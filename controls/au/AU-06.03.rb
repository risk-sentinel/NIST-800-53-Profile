control 'AU-06(03)' do
  impact 0.5
  title "audit records across different repositories are analyzed and correlated to gain organization-wide situational awareness."
  desc <<~DESC
    Analyze and correlate audit records across different repositories to gain organization-wide situational awareness.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      audit records across different repositories are analyzed and correlated to gain organization-wide situational awareness.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing audit review, analysis, and reporting; system design documentation; system configuration settings and associated documentation; system audit records across different repositories; other relevant documents or records
      INTERVIEW: Organizational personnel with audit review, analysis, and reporting responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms supporting the analysis and correlation of audit records
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organization-wide situational awareness includes awareness across all three levels of risk management (i.e., organizational level, mission/business process level, and information system level) and supports cross-organization awareness.
  GUIDANCE
  tag nist: ['AU-6 (3)']
  tag control: 'AU-6 (3)'
  tag objective: 'AU-06(03)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_au_6_3: true

  describe 'NIST SP 800-53A Rev 5 objective AU-06(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
