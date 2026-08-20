control 'AT-2 (1)' do
  impact 0.5
  title 'Practical Exercises'
  desc <<~DESC
    Provide practical exercises in literacy training that simulate events and incidents.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AT-02(01) practical exercises in literacy training that simulate events and incidents are provided.

    Assessment methods and objects:
      EXAMINE: System security plan; privacy plan; security awareness and training policy; procedures addressing security awareness training implementation; security awareness training curriculum; security awareness training materials; other relevant documents or records
      INTERVIEW: Organizational personnel who receive literacy training and awareness; organizational personnel with responsibilities for security awareness training; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing cyber-attack simulations in practical exercises
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Practical exercises include no-notice social engineering attempts to collect information, gain unauthorized access, or simulate the adverse impact of opening malicious email attachments or invoking, via spear phishing attacks, malicious web links.
  GUIDANCE
  tag nist: ['AT-2 (1)']
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AT-2 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
