control 'SI-04(07)(a)' do
  impact 0.5
  title "#{input('si_04_07_odp_01')} are notified of detected suspicious events;"
  desc <<~DESC
    (a) Notify #{input('si_04_07_odp_01')} of detected suspicious events; and
    (b) Take the following actions upon detection: #{input('si_04_07_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_04_07_odp_01')} are notified of detected suspicious events;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring tools and techniques; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; alerts and notifications generated based on detected suspicious events; records of actions taken to terminate suspicious events; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system; organizational personnel responsible for the intrusion detection system
      TEST: Organizational processes for intrusion detection and system monitoring; mechanisms supporting and/or implementing intrusion detection and system monitoring capabilities; mechanisms supporting and/or implementing notifications to incident response personnel; mechanisms supporting and/or implementing actions to terminate suspicious events
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Least-disruptive actions include initiating requests for human responses.
  GUIDANCE
  tag nist: ['SI-4 (7)']
  tag control: 'SI-4 (7)'
  tag objective: 'SI-04(07)(a)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_4_7: true
  tag odp: %w{si_04_07_odp_01 si_04_07_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SI-04(07)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
