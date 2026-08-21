control 'AU-06(06)' do
  impact 0.5
  title "information from audit records is correlated with information obtained from monitoring physical access to further enhance the ability to identify suspicious, inappropriate, unusual, or malevolent activity."
  desc <<~DESC
    Correlate information from audit records with information obtained from monitoring physical access to further enhance the ability to identify suspicious, inappropriate, unusual, or malevolent activity.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      information from audit records is correlated with information obtained from monitoring physical access to further enhance the ability to identify suspicious, inappropriate, unusual, or malevolent activity.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing audit review, analysis, and reporting; procedures addressing physical access monitoring; system design documentation; system configuration settings and associated documentation; documentation providing evidence of correlated information obtained from audit records and physical access monitoring records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with audit review, analysis, and reporting responsibilities; organizational personnel with physical access monitoring responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms implementing the capability to correlate information from audit records with information from monitoring physical access
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The correlation of physical audit record information and the audit records from systems may assist organizations in identifying suspicious behavior or supporting evidence of such behavior. For example, the correlation of an individual’s identity for logical access to certain systems with the additional physical security information that the individual was present at the facility when the logical access occurred may be useful in investigations.
  GUIDANCE
  tag nist: ['AU-6 (6)']
  tag control: 'AU-6 (6)'
  tag objective: 'AU-06(06)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_au_6_6: true

  describe 'NIST SP 800-53A Rev 5 objective AU-06(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
