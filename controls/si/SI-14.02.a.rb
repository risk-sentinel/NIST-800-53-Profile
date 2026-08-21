control 'SI-14(02)(a)' do
  impact 0.5
  title "#{input('si_14_02_odp_01')} is performed;"
  desc <<~DESC
    (a) #{input('si_14_02_odp_01')} ; and
    (b) Delete information when no longer needed.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_14_02_odp_01')} is performed;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing non-persistence for system components; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for ensuring that information is and remains non-persistent; organizational personnel with information security responsibilities
      TEST: Organizational processes for ensuring that information is and remains non-persistent; automated mechanisms supporting and/or implementing component and service refreshes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Retaining information longer than is needed makes the information a potential target for advanced adversaries searching for high value assets to compromise through unauthorized disclosure, unauthorized modification, or exfiltration. For system-related information, unnecessary retention provides advanced adversaries information that can assist in their reconnaissance and lateral movement through the system.
  GUIDANCE
  tag nist: ['SI-14 (2)']
  tag control: 'SI-14 (2)'
  tag objective: 'SI-14(02)(a)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_14_2: true
  tag odp: %w{si_14_02_odp_01}

  describe 'NIST SP 800-53A Rev 5 objective SI-14(02)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
