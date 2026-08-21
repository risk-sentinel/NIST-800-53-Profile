control 'SI-04(10)' do
  impact 0.5
  title "provisions are made so that #{input('si_04_10_odp_01')} is visible to #{input('si_04_10_odp_02')}."
  desc <<~DESC
    Make provisions so that #{input('si_04_10_odp_01')} is visible to #{input('si_04_10_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      provisions are made so that #{input('si_04_10_odp_01')} is visible to #{input('si_04_10_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring tools and techniques; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; system protocols; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system; organizational personnel responsible for the intrusion detection system
      TEST: Organizational processes for intrusion detection and system monitoring; mechanisms supporting and/or implementing intrusion detection and system monitoring capabilities; mechanisms supporting and/or implementing the visibility of encrypted communications traffic to monitoring tools
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations balance the need to encrypt communications traffic to protect data confidentiality with the need to maintain visibility into such traffic from a monitoring perspective. Organizations determine whether the visibility requirement applies to internal encrypted traffic, encrypted traffic intended for external destinations, or a subset of the traffic types.
  GUIDANCE
  tag nist: ['SI-4 (10)']
  tag control: 'SI-4 (10)'
  tag objective: 'SI-04(10)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_si_4_10: true
  tag odp: %w{si_04_10_odp_01 si_04_10_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SI-04(10)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
