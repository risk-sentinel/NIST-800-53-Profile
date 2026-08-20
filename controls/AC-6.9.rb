control 'AC-6 (9)' do
  impact 0.5
  title 'Log Use of Privileged Functions'
  desc <<~DESC
    Log the execution of privileged functions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-06(09) the execution of privileged functions is logged.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing least privilege; system design documentation; system configuration settings and associated documentation; list of privileged functions to be audited; list of audited events; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for reviewing least privileges necessary to accomplish specified tasks; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms auditing the execution of least privilege functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The misuse of privileged functions, either intentionally or unintentionally by authorized users or by unauthorized external entities that have compromised system accounts, is a serious and ongoing concern and can have significant adverse impacts on organizations. Logging and analyzing the use of privileged functions is one way to detect such misuse and, in doing so, help mitigate the risk from insider threats and the advanced persistent threat.
  GUIDANCE
  tag nist: ['AC-6 (9)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control AC-6 (9)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
