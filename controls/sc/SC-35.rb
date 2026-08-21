control 'SC-35' do
  impact 0.5
  title "system components that proactively seek to identify network-based malicious code or malicious websites are included."
  desc <<~DESC
    Include system components that proactively seek to identify network-based malicious code or malicious websites.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system components that proactively seek to identify network-based malicious code or malicious websites are included.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing external malicious code identification; system design documentation; system configuration settings and associated documentation; system components deployed to identify malicious websites and/or web-based malicious code; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; system developers/integrators
      TEST: Automated mechanisms supporting and/or implementing external malicious code identification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    External malicious code identification differs from decoys in [SC-26](#sc-26) in that the components actively probe networks, including the Internet, in search of malicious code contained on external websites. Like decoys, the use of external malicious code identification techniques requires some supporting isolation measures to ensure that any malicious code discovered during the search and subsequently executed does not infect organizational systems. Virtualization is a common technique for achieving such isolation.
  GUIDANCE
  tag nist: ['SC-35']
  tag control: 'SC-35'
  tag objective: 'SC-35'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_35: true

  describe 'NIST SP 800-53A Rev 5 objective SC-35' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
