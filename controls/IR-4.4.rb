control 'IR-4 (4)' do
  impact 0.5
  title 'Information Correlation'
  desc <<~DESC
    Correlate incident information and individual incident responses to achieve an organization-wide perspective on incident awareness and response.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-04(04) incident information and individual incident responses are correlated to achieve an organization-wide perspective on incident awareness and response.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident handling; incident response plan; privacy plan; mechanisms supporting incident and event correlation; system design documentation; system configuration settings and associated documentation; system security plan; privacy plan; incident management correlation logs; event management correlation logs; security information and event management logs; incident management correlation reports; event management correlation reports; security information and event management reports; audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with whom incident information and individual incident responses are to be correlated
      TEST: Organizational processes for correlating incident information and individual incident responses; mechanisms that support and or implement the correlation of incident response information with individual incident responses
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Sometimes, a threat event, such as a hostile cyber-attack, can only be observed by bringing together information from different sources, including various reports and reporting procedures established by organizations.
  GUIDANCE
  tag nist: ['IR-4 (4)']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{HIGH}
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control IR-4 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
