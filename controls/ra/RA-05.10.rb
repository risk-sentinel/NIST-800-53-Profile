control 'RA-05(10)' do
  impact 0.5
  title "the output from vulnerability scanning tools is correlated to determine the presence of multi-vulnerability and multi-hop attack vectors."
  desc <<~DESC
    Correlate the output from vulnerability scanning tools to determine the presence of multi-vulnerability and multi-hop attack vectors.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the output from vulnerability scanning tools is correlated to determine the presence of multi-vulnerability and multi-hop attack vectors.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; procedures addressing vulnerability scanning; risk assessment; vulnerability scanning tools and techniques documentation; vulnerability scanning results; vulnerability management records; audit records; event/vulnerability correlation logs; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with vulnerability scanning responsibilities; organizational personnel with vulnerability scan analysis responsibilities; organizational personnel with security responsibilities
      TEST: Organizational processes for vulnerability scanning; mechanisms/tools supporting and/or implementing vulnerability scanning; mechanisms implementing the correlation of vulnerability scan results
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An attack vector is a path or means by which an adversary can gain access to a system in order to deliver malicious code or exfiltrate information. Organizations can use attack trees to show how hostile activities by adversaries interact and combine to produce adverse impacts or negative consequences to systems and organizations. Such information, together with correlated data from vulnerability scanning tools, can provide greater clarity regarding multi-vulnerability and multi-hop attack vectors. The correlation of vulnerability scanning information is especially important when organizations are transitioning from older technologies to newer technologies (e.g., transitioning from IPv4 to IPv6 network protocols). During such transitions, some system components may inadvertently be unmanaged and create opportunities for adversary exploitation.
  GUIDANCE
  tag nist: ['RA-5 (10)']
  tag control: 'RA-5 (10)'
  tag objective: 'RA-05(10)'
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{}
  tag control_ra_5_10: true

  describe 'NIST SP 800-53A Rev 5 objective RA-05(10)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
