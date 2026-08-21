control 'SI-07(08)[01]' do
  impact 0.5
  title "the capability to audit an event upon the detection of a potential integrity violation is provided;"
  desc <<~DESC
    Upon detection of a potential integrity violation, provide the capability to audit the event and initiate the following actions: #{input('si_07_08_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the capability to audit an event upon the detection of a potential integrity violation is provided;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing software, firmware, and information integrity; system design documentation; system configuration settings and associated documentation; integrity verification tools and associated documentation; records of integrity scans; incident response records; list of security-relevant changes to the system; automated tools supporting alerts and notifications if unauthorized security changes are detected; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for software, firmware, and/or information integrity; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Software, firmware, and information integrity verification tools; mechanisms supporting and/or implementing the capability to audit potential integrity violations; mechanisms supporting and/or implementing alerts about potential integrity violations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations select response actions based on types of software, specific software, or information for which there are potential integrity violations.
  GUIDANCE
  tag nist: ['SI-7 (8)']
  tag control: 'SI-7 (8)'
  tag objective: 'SI-07(08)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_7_8: true
  tag odp: %w{si_07_08_odp_01}

  describe 'NIST SP 800-53A Rev 5 objective SI-07(08)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
