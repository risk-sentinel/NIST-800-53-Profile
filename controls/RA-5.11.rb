control 'RA-5 (11)' do
  impact 0.5
  title 'Public Disclosure Program'
  desc <<~DESC
    Establish a public reporting channel for receiving reports of vulnerabilities in organizational systems and system components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      RA-05(11) a public reporting channel is established for receiving reports of vulnerabilities in organizational systems and system components.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; procedures addressing vulnerability scanning; risk assessment; vulnerability scanning tools and techniques documentation; vulnerability scanning results; vulnerability management records; audit records; public reporting channel; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with vulnerability scanning responsibilities; organizational personnel with vulnerability scan analysis responsibilities; organizational personnel with security responsibilities
      TEST: Organizational processes for vulnerability scanning; mechanisms/tools supporting and/or implementing vulnerability scanning; mechanisms implementing the public reporting of vulnerabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The reporting channel is publicly discoverable and contains clear language authorizing good-faith research and the disclosure of vulnerabilities to the organization. The organization does not condition its authorization on an expectation of indefinite non-disclosure to the public by the reporting entity but may request a specific time period to properly remediate the vulnerability.
  GUIDANCE
  tag nist: ['RA-5 (11)']
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control RA-5 (11)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
