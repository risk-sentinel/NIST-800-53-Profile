control 'AC-18(05)[02]' do
  impact 0.5
  title "transmission power levels are calibrated to reduce the probability that signals from wireless access points can be received outside of organization-controlled boundaries."
  desc <<~DESC
    Select radio antennas and calibrate transmission power levels to reduce the probability that signals from wireless access points can be received outside of organization-controlled boundaries.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      transmission power levels are calibrated to reduce the probability that signals from wireless access points can be received outside of organization-controlled boundaries.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing wireless implementation and usage (including restrictions); system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Calibration of transmission power levels for wireless access; radio antenna signals for wireless access; wireless access reception outside of organization-controlled boundaries
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Actions that may be taken to limit unauthorized use of wireless communications outside of organization-controlled boundaries include reducing the power of wireless transmissions so that the transmissions are less likely to emit a signal that can be captured outside of the physical perimeters of the organization, employing measures such as emissions security to control wireless emanations, and using directional or beamforming antennas that reduce the likelihood that unintended receivers will be able to intercept signals. Prior to taking such mitigating actions, organizations can conduct periodic wireless surveys to understand the radio frequency profile of organizational systems as well as other systems that may be operating in the area.
  GUIDANCE
  tag nist: ['AC-18 (5)']
  tag control: 'AC-18 (5)'
  tag objective: 'AC-18(05)[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_ac_18_5: true

  describe 'NIST SP 800-53A Rev 5 objective AC-18(05)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
