control 'SI-04(04)(a)[01]' do
  impact 0.5
  title "criteria for unusual or unauthorized activities or conditions for inbound communications traffic are defined;"
  desc <<~DESC
    (a) Determine criteria for unusual or unauthorized activities or conditions for inbound and outbound communications traffic;
    (b) Monitor inbound and outbound communications traffic #{input('si_4_4_prm_1')} for #{input('si_4_4_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      criteria for unusual or unauthorized activities or conditions for inbound communications traffic are defined;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring tools and techniques; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; system protocols; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system; organizational personnel responsible for the intrusion detection system
      TEST: Organizational processes for intrusion detection and system monitoring; mechanisms supporting and/or implementing intrusion detection and system monitoring capabilities; mechanisms supporting and/or implementing the monitoring of inbound and outbound communications traffic
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Unusual or unauthorized activities or conditions related to system inbound and outbound communications traffic includes internal traffic that indicates the presence of malicious code or unauthorized use of legitimate code or credentials within organizational systems or propagating among system components, signaling to external systems, and the unauthorized exporting of information. Evidence of malicious code or unauthorized use of legitimate code or credentials is used to identify potentially compromised systems or system components.
  GUIDANCE
  tag nist: ['SI-4 (4)']
  tag control: 'SI-4 (4)'
  tag objective: 'SI-04(04)(a)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_si_4_4: true
  tag odp: %w{si_4_4_prm_1 si_4_4_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective SI-04(04)(a)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
