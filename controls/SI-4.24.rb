control 'SI-4 (24)' do
  impact 0.5
  title 'Indicators of Compromise'
  desc <<~DESC
    Discover, collect, and distribute to #{input('si_04_24_odp_02')} , indicators of compromise provided by #{input('si_04_24_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-04(24)[01] indicators of compromise provided by #{input('si_04_24_odp_01')} are discovered;
      SI-04(24)[02] indicators of compromise provided by #{input('si_04_24_odp_01')} are collected;
      SI-04(24)[03] indicators of compromise provided by #{input('si_04_24_odp_01')} are distributed to #{input('si_04_24_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; system monitoring logs or records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring system hosts
      TEST: Organizational processes for system monitoring; organizational processes for the discovery, collection, distribution, and use of indicators of compromise; mechanisms supporting and/or implementing a system monitoring capability; mechanisms supporting and/or implementing the discovery, collection, distribution, and use of indicators of compromise
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Indicators of compromise (IOC) are forensic artifacts from intrusions that are identified on organizational systems at the host or network level. IOCs provide valuable information on systems that have been compromised. IOCs can include the creation of registry key values. IOCs for network traffic include Universal Resource Locator or protocol elements that indicate malicious code command and control servers. The rapid distribution and adoption of IOCs can improve information security by reducing the time that systems and organizations are vulnerable to the same exploit or attack. Threat indicators, signatures, tactics, techniques, procedures, and other indicators of compromise may be available via government and non-government cooperatives, including the Forum of Incident Response and Security Teams, the United States Computer Emergency Readiness Team, the Defense Industrial Base Cybersecurity Information Sharing Program, and the CERT Coordination Center.
  GUIDANCE
  tag nist: ['SI-4 (24)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_04_24_odp_01 si_04_24_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SI-4 (24)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
