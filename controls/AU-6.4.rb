control 'AU-6 (4)' do
  impact 0.5
  title 'Central Review and Analysis'
  desc <<~DESC
    Provide and implement the capability to centrally review and analyze audit records from multiple components within the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-06(04)[01] the capability to centrally review and analyze audit records from multiple components within the system is provided;
      AU-06(04)[02] the capability to centrally review and analyze audit records from multiple components within the system is implemented.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing audit review, analysis, and reporting; system design documentation; system configuration settings and associated documentation; system security plan; privacy plan; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit review, analysis, and reporting responsibilities; organizational personnel with information security and privacy responsibilities; system developers
      TEST: System capability to centralize review and analysis of audit records
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms for centralized reviews and analyses include Security Information and Event Management products.
  GUIDANCE
  tag nist: ['AU-6 (4)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AU-6 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
