control 'SI-5' do
  impact 0.5
  title 'Security Alerts, Advisories, and Directives'
  desc <<~DESC
    a. Receive system security alerts, advisories, and directives from #{input('si_05_odp_01')} on an ongoing basis;
    b. Generate internal security alerts, advisories, and directives as deemed necessary;
    c. Disseminate security alerts, advisories, and directives to: #{input('si_05_odp_02')} ; and
    d. Implement security directives in accordance with established time frames, or notify the issuing organization of the degree of noncompliance.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-05a. system security alerts, advisories, and directives are received from #{input('si_05_odp_01')} on an ongoing basis;
      SI-05b. internal security alerts, advisories, and directives are generated as deemed necessary;
      SI-05c. security alerts, advisories, and directives are disseminated to #{input('si_05_odp_02')};
      SI-05d. security directives are implemented in accordance with established time frames or if the issuing organization is notified of the degree of noncompliance.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing security alerts, advisories, and directives; records of security alerts and advisories; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with security alert and advisory responsibilities; organizational personnel implementing, operating, maintaining, and using the system; organizational personnel, organizational elements, and/or external organizations to whom alerts, advisories, and directives are to be disseminated; system/network administrators; organizational personnel with information security responsibilities
      TEST: Organizational processes for defining, receiving, generating, disseminating, and complying with security alerts, advisories, and directives; mechanisms supporting and/or implementing the definition, receipt, generation, and dissemination of security alerts, advisories, and directives; mechanisms supporting and/or implementing security directives
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The Cybersecurity and Infrastructure Security Agency (CISA) generates security alerts and advisories to maintain situational awareness throughout the Federal Government. Security directives are issued by OMB or other designated organizations with the responsibility and authority to issue such directives. Compliance with security directives is essential due to the critical nature of many of these directives and the potential (immediate) adverse effects on organizational operations and assets, individuals, other organizations, and the Nation should the directives not be implemented in a timely manner. External organizations include supply chain partners, external mission or business partners, external service providers, and other peer or supporting organizations.
  GUIDANCE
  tag nist: ['SI-5']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{si_05_odp_01 si_05_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SI-5' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
