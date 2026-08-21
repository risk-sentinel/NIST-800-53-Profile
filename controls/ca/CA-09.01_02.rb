control 'CA-09(01)[02]' do
  impact 0.5
  title "privacy compliance checks are performed on constituent system components prior to the establishment of the internal connection."
  desc <<~DESC
    Perform security and privacy compliance checks on constituent system components prior to the establishment of the internal connection.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      privacy compliance checks are performed on constituent system components prior to the establishment of the internal connection.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; access control policy; procedures addressing system connections; system and communications protection policy; system design documentation; system configuration settings and associated documentation; list of components or classes of components authorized as internal system connections; assessment report; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for developing, implementing, or authorizing internal system connections; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms supporting compliance checks
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Compliance checks include verification of the relevant baseline configuration.
  GUIDANCE
  tag nist: ['CA-9 (1)']
  tag control: 'CA-9 (1)'
  tag objective: 'CA-09(01)[02]'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{}
  tag control_ca_9_1: true

  describe 'NIST SP 800-53A Rev 5 objective CA-09(01)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
