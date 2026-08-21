control 'RA-05(02)' do
  impact 0.5
  title "the system vulnerabilities to be scanned are updated #{input('ra_05_02_odp_01')}."
  desc <<~DESC
    Update the system vulnerabilities to be scanned #{input('ra_05_02_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the system vulnerabilities to be scanned are updated #{input('ra_05_02_odp_01')}.

    Assessment methods and objects:
      EXAMINE: Procedures addressing vulnerability scanning; assessment report; vulnerability scanning tools and associated configuration documentation; vulnerability scanning results; patch and vulnerability management records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with vulnerability scanning responsibilities; organizational personnel with vulnerability scan analysis responsibilities; organizational personnel with security responsibilities; system/network administrators
      TEST: Organizational processes for vulnerability scanning; mechanisms/tools supporting and/or implementing vulnerability scanning
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Due to the complexity of modern software, systems, and other factors, new vulnerabilities are discovered on a regular basis. It is important that newly discovered vulnerabilities are added to the list of vulnerabilities to be scanned to ensure that the organization can take steps to mitigate those vulnerabilities in a timely manner.
  GUIDANCE
  tag nist: ['RA-5 (2)']
  tag control: 'RA-5 (2)'
  tag objective: 'RA-05(02)'
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ra_5_2: true
  tag odp: %w{ra_05_02_odp_01}

  describe 'NIST SP 800-53A Rev 5 objective RA-05(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
