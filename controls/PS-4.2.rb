control 'PS-4 (2)' do
  impact 0.5
  title 'Automated Actions'
  desc <<~DESC
    Use #{input('ps_04_02_odp_01')} to #{input('ps_04_02_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PS-04(02) #{input('ps_04_02_odp_01')} are used to #{input('ps_04_02_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Personnel security policy; procedures addressing personnel termination; system design documentation; system configuration settings and associated documentation; records of personnel termination actions; automated notifications of employee terminations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for personnel termination; automated mechanisms supporting and/or implementing personnel termination notifications
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In organizations with many employees, not all personnel who need to know about termination actions receive the appropriate notifications, or if such notifications are received, they may not occur in a timely manner. Automated mechanisms can be used to send automatic alerts or notifications to organizational personnel or roles when individuals are terminated. Such automatic alerts or notifications can be conveyed in a variety of ways, including via telephone, electronic mail, text message, or websites. Automated mechanisms can also be employed to quickly and thoroughly disable access to system resources after an employee is terminated.
  GUIDANCE
  tag nist: ['PS-4 (2)']
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{ps_04_02_odp_01 ps_04_02_odp_02}

  describe 'NIST SP 800-53 Rev 5 control PS-4 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
