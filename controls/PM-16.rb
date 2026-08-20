control 'PM-16' do
  impact 0.5
  title 'Threat Awareness Program'
  desc <<~DESC
    Implement a threat awareness program that includes a cross-organization information-sharing capability for threat intelligence.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-16 a threat awareness program that includes a cross-organization information-sharing capability for threat intelligence is implemented.

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; threat awareness program policy; threat awareness program procedures; risk assessment results relevant to threat awareness; documentation about the cross-organization information-sharing capability; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for the threat awareness program; organizational personnel responsible for the cross-organization information-sharing capability; organizational personnel with information security and privacy responsibilities; external personnel with whom threat awareness information is shared by the organization
      TEST: Organizational processes for implementing the threat awareness program; organizational processes for implementing the cross-organization information-sharing capability; mechanisms supporting and/or implementing the threat awareness program; mechanisms supporting and/or implementing the cross-organization information-sharing capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Because of the constantly changing and increasing sophistication of adversaries, especially the advanced persistent threat (APT), it may be more likely that adversaries can successfully breach or compromise organizational systems. One of the best techniques to address this concern is for organizations to share threat information, including threat events (i.e., tactics, techniques, and procedures) that organizations have experienced, mitigations that organizations have found are effective against certain types of threats, and threat intelligence (i.e., indications and warnings about threats). Threat information sharing may be bilateral or multilateral. Bilateral threat sharing includes government-to-commercial and government-to-government cooperatives. Multilateral threat sharing includes organizations taking part in threat-sharing consortia. Threat information may require special agreements and protection, or it may be freely shared.
  GUIDANCE
  tag nist: ['PM-16']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control PM-16' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
