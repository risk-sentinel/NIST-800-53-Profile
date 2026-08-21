control 'SI-13(05)' do
  impact 0.5
  title "#{input('si_13_05_odp_01')} #{input('si_13_05_odp_02')} is provided for the system."
  desc <<~DESC
    Provide #{input('si_13_05_odp_01')} #{input('si_13_05_odp_02')} for the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_13_05_odp_01')} #{input('si_13_05_odp_02')} is provided for the system.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing predictable failure prevention; system design documentation; system configuration settings and associated documentation; documentation describing the failover capability provided for the system; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for the failover capability; organizational personnel with information security responsibilities; system/network administrators; organizational personnel with contingency planning responsibilities
      TEST: Organizational processes for managing the failover capability; automated mechanisms supporting and/or implementing the failover capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Failover refers to the automatic switchover to an alternate system upon the failure of the primary system. Failover capability includes incorporating mirrored system operations at alternate processing sites or periodic data mirroring at regular intervals defined by the recovery time periods of organizations.
  GUIDANCE
  tag nist: ['SI-13 (5)']
  tag control: 'SI-13 (5)'
  tag objective: 'SI-13(05)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_13_5: true
  tag odp: %w{si_13_05_odp_01 si_13_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SI-13(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
