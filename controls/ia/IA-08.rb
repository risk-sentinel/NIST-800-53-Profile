control 'IA-08' do
  impact 0.5
  title "non-organizational users or processes acting on behalf of non-organizational users are uniquely identified and authenticated."
  desc <<~DESC
    Uniquely identify and authenticate non-organizational users or processes acting on behalf of non-organizational users.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      non-organizational users or processes acting on behalf of non-organizational users are uniquely identified and authenticated.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; privacy plan; procedures addressing user identification and authentication; system design documentation; system configuration settings and associated documentation; system audit records; list of system accounts; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; organizational personnel with account management responsibilities
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Non-organizational users include system users other than organizational users explicitly covered by [IA-2](#ia-2) . Non-organizational users are uniquely identified and authenticated for accesses other than those explicitly identified and documented in [AC-14](#ac-14) . Identification and authentication of non-organizational users accessing federal systems may be required to protect federal, proprietary, or privacy-related information (with exceptions noted for national security systems). Organizations consider many factors—including security, privacy, scalability, and practicality—when balancing the need to ensure ease of use for access to federal information and systems with the need to protect and adequately mitigate risk.
  GUIDANCE
  tag nist: ['IA-8']
  tag control: 'IA-8'
  tag objective: 'IA-08'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ia_8: true

  describe 'NIST SP 800-53A Rev 5 objective IA-08' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
