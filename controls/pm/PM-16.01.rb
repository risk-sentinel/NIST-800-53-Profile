control 'PM-16(01)' do
  impact 0.5
  title "automated mechanisms are employed to maximize the effectiveness of sharing threat intelligence information."
  desc <<~DESC
    Employ automated mechanisms to maximize the effectiveness of sharing threat intelligence information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      automated mechanisms are employed to maximize the effectiveness of sharing threat intelligence information.

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; threat awareness program policy; threat awareness program procedures; risk assessment results related to threat awareness; documentation about the cross-organization information-sharing capability; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for the threat awareness program; organizational personnel responsible for the cross-organization information-sharing capability; organizational personnel with information security and privacy responsibilities; external personnel with whom threat awareness information is shared by the organization
      TEST: Organizational processes for implementing the threat awareness program; organizational processes for implementing the cross-organization information-sharing capability; automated mechanisms supporting and/or implementing the threat awareness program; automated mechanisms supporting and/or implementing the cross-organization information-sharing capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    To maximize the effectiveness of monitoring, it is important to know what threat observables and indicators the sensors need to be searching for. By using well-established frameworks, services, and automated tools, organizations improve their ability to rapidly share and feed the relevant threat detection signatures into monitoring tools.
  GUIDANCE
  tag nist: ['PM-16 (1)']
  tag control: 'PM-16 (1)'
  tag objective: 'PM-16(01)'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}
  tag control_pm_16_1: true

  describe 'NIST SP 800-53A Rev 5 objective PM-16(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
