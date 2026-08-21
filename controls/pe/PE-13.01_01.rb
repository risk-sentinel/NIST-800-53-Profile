control 'PE-13(01)[01]' do
  impact 0.5
  title "fire detection systems that activate automatically are employed in the event of a fire;"
  desc <<~DESC
    Employ fire detection systems that activate automatically and notify #{input('pe_13_01_odp_01')} and #{input('pe_13_01_odp_02')} in the event of a fire.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      fire detection systems that activate automatically are employed in the event of a fire;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing fire protection; facility housing the information system; alarm service-level agreements; test records of fire suppression and detection devices/systems; fire suppression and detection devices/systems documentation; alerts/notifications of fire events; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for fire detection and suppression devices/systems; organizational personnel with responsibilities for notifying appropriate personnel, roles, and emergency responders of fires; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing fire detection devices/systems; activation of fire detection devices/systems (simulated); automated notifications
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations can identify personnel, roles, and emergency responders if individuals on the notification list need to have access authorizations or clearances (e.g., to enter to facilities where access is restricted due to the classification or impact level of information within the facility). Notification mechanisms may require independent energy sources to ensure that the notification capability is not adversely affected by the fire.
  GUIDANCE
  tag nist: ['PE-13 (1)']
  tag control: 'PE-13 (1)'
  tag objective: 'PE-13(01)[01]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_13_1: true
  tag odp: %w{pe_13_01_odp_01 pe_13_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PE-13(01)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
