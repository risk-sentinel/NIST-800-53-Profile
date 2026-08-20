control 'PE-12' do
  impact 0.5
  title 'Emergency Lighting'
  desc <<~DESC
    Employ and maintain automatic emergency lighting for the system that activates in the event of a power outage or disruption and that covers emergency exits and evacuation routes within the facility.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-12[01] automatic emergency lighting that activates in the event of a power outage or disruption is employed for the system;
      PE-12[02] automatic emergency lighting that activates in the event of a power outage or disruption is maintained for the system;
      PE-12[03] automatic emergency lighting for the system covers emergency exits within the facility;
      PE-12[04] automatic emergency lighting for the system covers evacuation routes within the facility.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing emergency lighting; emergency lighting documentation; emergency lighting test records; emergency exits and evacuation routes; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for emergency lighting and/or planning; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing an emergency lighting capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The provision of emergency lighting applies primarily to organizational facilities that contain concentrations of system resources, including data centers, server rooms, and mainframe computer rooms. Emergency lighting provisions for the system are described in the contingency plan for the organization. If emergency lighting for the system fails or cannot be provided, organizations consider alternate processing sites for power-related contingencies.
  GUIDANCE
  tag nist: ['PE-12']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control PE-12' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
