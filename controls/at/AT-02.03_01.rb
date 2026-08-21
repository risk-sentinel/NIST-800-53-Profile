control 'AT-02(03)[01]' do
  impact 0.5
  title "literacy training on recognizing potential and actual instances of social engineering is provided;"
  desc <<~DESC
    Provide literacy training on recognizing and reporting potential and actual instances of social engineering and social mining.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      literacy training on recognizing potential and actual instances of social engineering is provided;

    Assessment methods and objects:
      EXAMINE: System security plan; privacy plan; literacy training and awareness policy; procedures addressing literacy training and awareness implementation; literacy training and awareness curriculum; literacy training and awareness materials; other relevant documents or records
      INTERVIEW: Organizational personnel who receive literacy training and awareness; organizational personnel with responsibilities for literacy training and awareness; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Social engineering is an attempt to trick an individual into revealing information or taking an action that can be used to breach, compromise, or otherwise adversely impact a system. Social engineering includes phishing, pretexting, impersonation, baiting, quid pro quo, thread-jacking, social media exploitation, and tailgating. Social mining is an attempt to gather information about the organization that may be used to support future attacks. Literacy training includes information on how to communicate the concerns of employees and management regarding potential and actual instances of social engineering and data mining through organizational channels based on established policies and procedures.
  GUIDANCE
  tag nist: ['AT-2 (3)']
  tag control: 'AT-2 (3)'
  tag objective: 'AT-02(03)[01]'
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_at_2_3: true

  describe 'NIST SP 800-53A Rev 5 objective AT-02(03)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
