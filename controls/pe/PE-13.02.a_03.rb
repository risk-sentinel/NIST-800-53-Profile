control 'PE-13(02)(a)[03]' do
  impact 0.5
  title "fire suppression systems that notify #{input('pe_13_02_odp_02')} automatically are employed;"
  desc <<~DESC
    (a) Employ fire suppression systems that activate automatically and notify #{input('pe_13_02_odp_01')} and #{input('pe_13_02_odp_02')} ; and
    (b) Employ an automatic fire suppression capability when the facility is not staffed on a continuous basis.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      fire suppression systems that notify #{input('pe_13_02_odp_02')} automatically are employed;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing fire protection; fire suppression and detection devices/systems documentation; facility housing the system; alarm service-level agreements; test records of fire suppression and detection devices/systems; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for fire detection and suppression devices/systems; organizational personnel with responsibilities for providing automatic notifications of any activation of fire suppression devices/systems to appropriate personnel, roles, and emergency responders; organizational personnel with information security responsibilities
      TEST: Automated mechanisms supporting and/or implementing fire suppression devices/systems; activation of fire suppression devices/systems (simulated); automated notifications
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations can identify specific personnel, roles, and emergency responders if individuals on the notification list need to have appropriate access authorizations and/or clearances (e.g., to enter to facilities where access is restricted due to the impact level or classification of information within the facility). Notification mechanisms may require independent energy sources to ensure that the notification capability is not adversely affected by the fire.
  GUIDANCE
  tag nist: ['PE-13 (2)']
  tag control: 'PE-13 (2)'
  tag objective: 'PE-13(02)(a)[03]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_pe_13_2: true
  tag odp: %w{pe_13_02_odp_01 pe_13_02_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PE-13(02)(a)[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
