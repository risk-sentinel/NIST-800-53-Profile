control 'SI-04(17)' do
  impact 0.5
  title "information from monitoring physical, cyber, and supply chain activities are correlated to achieve integrated, organization-wide situational awareness."
  desc <<~DESC
    Correlate information from monitoring physical, cyber, and supply chain activities to achieve integrated, organization-wide situational awareness.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      information from monitoring physical, cyber, and supply chain activities are correlated to achieve integrated, organization-wide situational awareness.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring tools and techniques; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; event correlation logs or records resulting from physical, cyber, and supply chain activities; system audit records; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system; organizational personnel responsible for the intrusion detection system
      TEST: Organizational processes for intrusion detection and system monitoring; mechanisms supporting and/or implementing intrusion detection and system monitoring capabilities; mechanisms supporting and/or implementing the correlation of information from monitoring tools
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Correlating monitoring information from a more diverse set of information sources helps to achieve integrated situational awareness. Integrated situational awareness from a combination of physical, cyber, and supply chain monitoring activities enhances the capability of organizations to more quickly detect sophisticated attacks and investigate the methods and techniques employed to carry out such attacks. In contrast to [SI-4(16)](#si-4.16) , which correlates the various cyber monitoring information, integrated situational awareness is intended to correlate monitoring beyond the cyber domain. Correlation of monitoring information from multiple activities may help reveal attacks on organizations that are operating across multiple attack vectors.
  GUIDANCE
  tag nist: ['SI-4 (17)']
  tag control: 'SI-4 (17)'
  tag objective: 'SI-04(17)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_4_17: true

  describe 'NIST SP 800-53A Rev 5 objective SI-04(17)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
