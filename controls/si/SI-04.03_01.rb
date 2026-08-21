control 'SI-04(03)[01]' do
  impact 0.5
  title "automated tools and mechanisms are employed to integrate intrusion detection tools and mechanisms into access control mechanisms;"
  desc <<~DESC
    Employ automated tools and mechanisms to integrate intrusion detection tools and mechanisms into access control and flow control mechanisms.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      automated tools and mechanisms are employed to integrate intrusion detection tools and mechanisms into access control mechanisms;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; access control policy and procedures; procedures addressing system monitoring tools and techniques; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system; organizational personnel responsible for the intrusion detection system
      TEST: Organizational processes for intrusion detection and system monitoring; mechanisms supporting and/or implementing the intrusion detection and system monitoring capability; mechanisms and tools supporting and/or implementing the access and flow control capabilities; mechanisms and tools supporting and/or implementing the integration of intrusion detection tools into the access and flow control mechanisms
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Using automated tools and mechanisms to integrate intrusion detection tools and mechanisms into access and flow control mechanisms facilitates a rapid response to attacks by enabling the reconfiguration of mechanisms in support of attack isolation and elimination.
  GUIDANCE
  tag nist: ['SI-4 (3)']
  tag control: 'SI-4 (3)'
  tag objective: 'SI-04(03)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_4_3: true

  describe 'NIST SP 800-53A Rev 5 objective SI-04(03)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
