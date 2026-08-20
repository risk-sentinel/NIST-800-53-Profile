control 'SI-4 (18)' do
  impact 0.5
  title 'Analyze Traffic and Covert Exfiltration'
  desc <<~DESC
    Analyze outbound communications traffic at external interfaces to the system and at the following interior points to detect covert exfiltration of information: #{input('si_04_18_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-04(18)[01] outbound communications traffic is analyzed at interfaces external to the system to detect covert exfiltration of information;
      SI-04(18)[02] outbound communications traffic is analyzed at #{input('si_04_18_odp')} to detect covert exfiltration of information.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring tools and techniques; system design documentation; network diagram; system monitoring tools and techniques documentation; system configuration settings and associated documentation; system monitoring logs or records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system; organizational personnel responsible for the intrusion detection system
      TEST: Organizational processes for intrusion detection and system monitoring; mechanisms supporting and/or implementing intrusion detection and system monitoring capabilities; mechanisms supporting and/or implementing an analysis of outbound communications traffic
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organization-defined interior points include subnetworks and subsystems. Covert means that can be used to exfiltrate information include steganography.
  GUIDANCE
  tag nist: ['SI-4 (18)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_04_18_odp}

  describe 'NIST SP 800-53 Rev 5 control SI-4 (18)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
