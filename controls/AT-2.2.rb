control 'AT-2 (2)' do
  impact 0.5
  title 'Insider Threat'
  desc <<~DESC
    Provide literacy training on recognizing and reporting potential indicators of insider threat.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AT-02(02)[01] literacy training on recognizing potential indicators of insider threat is provided;
      AT-02(02)[02] literacy training on reporting potential indicators of insider threat is provided.

    Assessment methods and objects:
      EXAMINE: System security plan; privacy plan; literacy training and awareness policy; procedures addressing literacy training and awareness implementation; literacy training and awareness curriculum; literacy training and awareness materials; other relevant documents or records
      INTERVIEW: Organizational personnel who receive literacy training and awareness; organizational personnel with responsibilities for literacy training and awareness; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Potential indicators and possible precursors of insider threat can include behaviors such as inordinate, long-term job dissatisfaction; attempts to gain access to information not required for job performance; unexplained access to financial resources; bullying or harassment of fellow employees; workplace violence; and other serious violations of policies, procedures, directives, regulations, rules, or practices. Literacy training includes how to communicate the concerns of employees and management regarding potential indicators of insider threat through channels established by the organization and in accordance with established policies and procedures. Organizations may consider tailoring insider threat awareness topics to the role. For example, training for managers may be focused on changes in the behavior of team members, while training for employees may be focused on more general observations.
  GUIDANCE
  tag nist: ['AT-2 (2)']
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control AT-2 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
