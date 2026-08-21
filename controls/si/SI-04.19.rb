control 'SI-04(19)' do
  impact 0.5
  title "#{input('si_04_19_odp_01')} is implemented on individuals who have been identified by #{input('si_04_19_odp_02')} as posing an increased level of risk."
  desc <<~DESC
    Implement #{input('si_04_19_odp_01')} of individuals who have been identified by #{input('si_04_19_odp_02')} as posing an increased level of risk.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_04_19_odp_01')} is implemented on individuals who have been identified by #{input('si_04_19_odp_02')} as posing an increased level of risk.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system; legal counsel; human resource officials; organizational personnel with personnel security responsibilities
      TEST: Organizational processes for system monitoring; mechanisms supporting and/or implementing a system monitoring capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Indications of increased risk from individuals can be obtained from different sources, including personnel records, intelligence agencies, law enforcement organizations, and other sources. The monitoring of individuals is coordinated with the management, legal, security, privacy, and human resource officials who conduct such monitoring. Monitoring is conducted in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines.
  GUIDANCE
  tag nist: ['SI-4 (19)']
  tag control: 'SI-4 (19)'
  tag objective: 'SI-04(19)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_4_19: true
  tag odp: %w{si_04_19_odp_01 si_04_19_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SI-04(19)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
