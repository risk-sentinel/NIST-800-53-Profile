control 'CA-05(01)' do
  impact 0.5
  title "#{input('ca_05_01_odp')} are used to ensure the accuracy, currency, and availability of the plan of action and milestones for the system."
  desc <<~DESC
    Ensure the accuracy, currency, and availability of the plan of action and milestones for the system using #{input('ca_05_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ca_05_01_odp')} are used to ensure the accuracy, currency, and availability of the plan of action and milestones for the system.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; procedures addressing plan of action and milestones; system design documentation; system configuration settings and associated documentation; system audit records; plan of action and milestones; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with plan of action and milestones development and implementation responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Automated mechanisms for developing, implementing, and maintaining a plan of action and milestones
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Using automated tools helps maintain the accuracy, currency, and availability of the plan of action and milestones and facilitates the coordination and sharing of security and privacy information throughout the organization. Such coordination and information sharing help to identify systemic weaknesses or deficiencies in organizational systems and ensure that appropriate resources are directed at the most critical system vulnerabilities in a timely manner.
  GUIDANCE
  tag nist: ['CA-5 (1)']
  tag control: 'CA-5 (1)'
  tag objective: 'CA-05(01)'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{}
  tag control_ca_5_1: true
  tag odp: %w{ca_05_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective CA-05(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
