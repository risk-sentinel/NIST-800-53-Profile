control 'CA-06(01)[02]' do
  impact 0.5
  title "the joint authorization process employed for the system includes multiple authorizing officials from the same organization conducting the authorization."
  desc <<~DESC
    Employ a joint authorization process for the system that includes multiple authorizing officials from the same organization conducting the authorization.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the joint authorization process employed for the system includes multiple authorizing officials from the same organization conducting the authorization.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; procedures addressing authorization; system security plan; privacy plan; assessment report; plan of action and milestones; authorization statement; other relevant documents or records
      INTERVIEW: Organizational personnel with authorization responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms that facilitate authorizations and updates
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Assigning multiple authorizing officials from the same organization to serve as co-authorizing officials for the system increases the level of independence in the risk-based decision-making process. It also implements the concepts of separation of duties and dual authorization as applied to the system authorization process. The intra-organization joint authorization process is most relevant for connected systems, shared systems, and systems with multiple information owners.
  GUIDANCE
  tag nist: ['CA-6 (1)']
  tag control: 'CA-6 (1)'
  tag objective: 'CA-06(01)[02]'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{}
  tag control_ca_6_1: true

  describe 'NIST SP 800-53A Rev 5 objective CA-06(01)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
