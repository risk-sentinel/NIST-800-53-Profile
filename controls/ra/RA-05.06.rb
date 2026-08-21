control 'RA-05(06)' do
  impact 0.5
  title "the results of multiple vulnerability scans are compared using #{input('ra_05_06_odp')}."
  desc <<~DESC
    Compare the results of multiple vulnerability scans using #{input('ra_05_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the results of multiple vulnerability scans are compared using #{input('ra_05_06_odp')}.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; procedures addressing vulnerability scanning; system design documentation; vulnerability scanning tools and techniques documentation; vulnerability scanning results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with vulnerability scanning responsibilities; organizational personnel with vulnerability scan analysis responsibilities; organizational personnel with security responsibilities
      TEST: Organizational processes for vulnerability scanning; automated mechanisms/tools supporting and/or implementing vulnerability scanning; automated mechanisms supporting and/or implementing trend analysis of vulnerability scan results
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Using automated mechanisms to analyze multiple vulnerability scans over time can help determine trends in system vulnerabilities and identify patterns of attack.
  GUIDANCE
  tag nist: ['RA-5 (6)']
  tag control: 'RA-5 (6)'
  tag objective: 'RA-05(06)'
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{}
  tag control_ra_5_6: true
  tag odp: %w{ra_05_06_odp}

  describe 'NIST SP 800-53A Rev 5 objective RA-05(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
