control 'RA-5 (5)' do
  impact 0.5
  title 'Privileged Access'
  desc <<~DESC
    Implement privileged access authorization to #{input('ra_05_05_odp_01')} for #{input('ra_05_05_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      RA-05(05) privileged access authorization is implemented to #{input('ra_05_05_odp_01')} for #{input('ra_05_05_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; procedures addressing vulnerability scanning; system design documentation; system configuration settings and associated documentation; list of system components for vulnerability scanning; personnel access authorization list; authorization credentials; access authorization records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with vulnerability scanning responsibilities; system/network administrators; organizational personnel responsible for access control to the system; organizational personnel responsible for configuration management of the system; system developers; organizational personnel with security responsibilities
      TEST: Organizational processes for vulnerability scanning; organizational processes for access control; mechanisms supporting and/or implementing access control; mechanisms/tools supporting and/or implementing vulnerability scanning
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In certain situations, the nature of the vulnerability scanning may be more intrusive, or the system component that is the subject of the scanning may contain classified or controlled unclassified information, such as personally identifiable information. Privileged access authorization to selected system components facilitates more thorough vulnerability scanning and protects the sensitive nature of such scanning.
  GUIDANCE
  tag nist: ['RA-5 (5)']
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ra_05_05_odp_01 ra_05_05_odp_02}

  describe 'NIST SP 800-53 Rev 5 control RA-5 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
