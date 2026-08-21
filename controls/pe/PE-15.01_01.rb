control 'PE-15(01)[01]' do
  impact 0.5
  title "the presence of water near the system can be detected automatically;"
  desc <<~DESC
    Detect the presence of water near the system and alert #{input('pe_15_01_odp_01')} using #{input('pe_15_01_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the presence of water near the system can be detected automatically;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing water damage protection; facility housing the system; automated mechanisms for water shutoff valves; automated mechanisms for detecting the presence of water in the vicinity of the system; alerts/notifications of water detection in system facility; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for system environmental controls; organizational personnel with information security responsibilities
      TEST: Automated mechanisms supporting and/or implementing water detection capabilities and alerts for the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms include notification systems, water detection sensors, and alarms.
  GUIDANCE
  tag nist: ['PE-15 (1)']
  tag control: 'PE-15 (1)'
  tag objective: 'PE-15(01)[01]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_pe_15_1: true
  tag odp: %w{pe_15_01_odp_01 pe_15_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PE-15(01)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
