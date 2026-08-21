control 'SI-04(09)' do
  impact 0.5
  title "intrusion-monitoring tools and mechanisms are tested #{input('si_04_09_odp')}."
  desc <<~DESC
    Test intrusion-monitoring tools and mechanisms #{input('si_04_09_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      intrusion-monitoring tools and mechanisms are tested #{input('si_04_09_odp')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing the testing of system monitoring tools and techniques; documentation providing evidence of testing intrusion-monitoring tools; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system; organizational personnel responsible for the intrusion detection system
      TEST: Organizational processes for intrusion detection and system monitoring; mechanisms supporting and/or implementing intrusion detection and system monitoring capabilities; mechanisms supporting and/or implementing the testing of intrusion-monitoring tools
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Testing intrusion-monitoring tools and mechanisms is necessary to ensure that the tools and mechanisms are operating correctly and continue to satisfy the monitoring objectives of organizations. The frequency and depth of testing depends on the types of tools and mechanisms used by organizations and the methods of deployment.
  GUIDANCE
  tag nist: ['SI-4 (9)']
  tag control: 'SI-4 (9)'
  tag objective: 'SI-04(09)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_4_9: true
  tag odp: %w{si_04_09_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-04(09)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
