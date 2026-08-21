control 'AT-3 (3)' do
  impact 0.5
  title 'Practical Exercises'
  desc <<~DESC
    Provide practical exercises in security and privacy training that reinforce training objectives.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AT-03(03)[01] practical exercises in security training that reinforce training objectives are provided;
      AT-03(03)[02] practical exercises in privacy training that reinforce training objectives are provided.

    Assessment methods and objects:
      EXAMINE: Security and privacy awareness and training policy; procedures addressing security and privacy awareness training implementation; security and privacy awareness training curriculum; security and privacy awareness training materials; security and privacy awareness training reports and results; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for role-based security and privacy training; organizational personnel who participate in security and privacy awareness training
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Practical exercises for security include training for software developers that addresses simulated attacks that exploit common software vulnerabilities or spear or whale phishing attacks targeted at senior leaders or executives. Practical exercises for privacy include modules with quizzes on identifying and processing personally identifiable information in various scenarios or scenarios on conducting privacy impact assessments.
  GUIDANCE
  tag nist: ['AT-3 (3)']
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AT-3 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
