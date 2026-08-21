control 'IR-5' do
  impact 0.5
  title 'Incident Monitoring'
  desc <<~DESC
    Track and document incidents.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-05[01] incidents are tracked;
      IR-05[02] incidents are documented.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident monitoring; incident response records and documentation; incident response plan; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident monitoring responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Incident monitoring capability for the organization; mechanisms supporting and/or implementing the tracking and documenting of system security incidents
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Documenting incidents includes maintaining records about each incident, the status of the incident, and other pertinent information necessary for forensics as well as evaluating incident details, trends, and handling. Incident information can be obtained from a variety of sources, including network monitoring, incident reports, incident response teams, user complaints, supply chain partners, audit monitoring, physical access monitoring, and user and administrator reports. [IR-4](#ir-4) provides information on the types of incidents that are appropriate for monitoring.
  GUIDANCE
  tag nist: ['IR-5']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true

  describe 'NIST SP 800-53 Rev 5 control IR-5' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
