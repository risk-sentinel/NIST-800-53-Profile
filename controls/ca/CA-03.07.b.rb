control 'CA-03(07)(b)' do
  impact 0.5
  title "measures are taken to ensure that transitive (downstream) information exchanges cease when the controls on identified transitive (downstream) systems cannot be verified or validated."
  desc <<~DESC
    (a) Identify transitive (downstream) information exchanges with other systems through the systems identified in [CA-3a](#ca-3_smt.a) ; and
    (b) Take measures to ensure that transitive (downstream) information exchanges cease when the controls on identified transitive (downstream) systems cannot be verified or validated.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      measures are taken to ensure that transitive (downstream) information exchanges cease when the controls on identified transitive (downstream) systems cannot be verified or validated.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing system connections; system and communications protection policy; system interconnection agreements; information exchange security agreements; memoranda of understanding or agreements; service level agreements; non-disclosure agreements; system design documentation; system configuration settings and associated documentation; control assessment report; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for managing connections to external systems; network administrators; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms implementing restrictions on external system connections
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Transitive or "downstream" information exchanges are information exchanges between the system or systems with which the organizational system exchanges information and other systems. For mission-essential systems, services, and applications, including high value assets, it is necessary to identify such information exchanges. The transparency of the controls or protection measures in place in such downstream systems connected directly or indirectly to organizational systems is essential to understanding the security and privacy risks resulting from those information exchanges. Organizational systems can inherit risk from downstream systems through transitive connections and information exchanges, which can make the organizational systems more susceptible to threats, hazards, and adverse impacts.
  GUIDANCE
  tag nist: ['CA-3 (7)']
  tag control: 'CA-3 (7)'
  tag objective: 'CA-03(07)(b)'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{}
  tag control_ca_3_7: true

  describe 'NIST SP 800-53A Rev 5 objective CA-03(07)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
