control 'PM-02[01]' do
  impact 0.5
  title "a senior agency information security officer is appointed;"
  desc <<~DESC
    Appoint a senior agency information security officer with the mission and resources to coordinate, develop, implement, and maintain an organization-wide information security program.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a senior agency information security officer is appointed;

    Assessment methods and objects:
      EXAMINE: Information security program plan; procedures addressing program plan development and implementation; procedures addressing program plan reviews and updates; procedures addressing coordination of the program plan with relevant entities; other relevant documents or records
      INTERVIEW: Organizational personnel with information security program planning and plan implementation responsibilities; senior information security officer; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The senior agency information security officer is an organizational official. For federal agencies (as defined by applicable laws, executive orders, regulations, directives, policies, and standards), this official is the senior agency information security officer. Organizations may also refer to this official as the senior information security officer or chief information security officer.
  GUIDANCE
  tag nist: ['PM-2']
  tag control: 'PM-2'
  tag objective: 'PM-02[01]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}
  tag control_pm_2: true

  describe 'NIST SP 800-53A Rev 5 objective PM-02[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
