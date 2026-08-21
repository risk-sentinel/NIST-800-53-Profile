control 'AU-16 (2)' do
  impact 0.5
  title 'Sharing of Audit Information'
  desc <<~DESC
    Provide cross-organizational audit information to #{input('au_16_02_odp_01')} based on #{input('au_16_02_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-16(02) cross-organizational audit information is provided to #{input('au_16_02_odp_01')} based on #{input('au_16_02_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing cross-organizational sharing of audit information; information sharing agreements; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for sharing cross-organizational audit information; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Due to the distributed nature of the audit information, cross-organization sharing of audit information may be essential for effective analysis of the auditing being performed. For example, the audit records of one organization may not provide sufficient information to determine the appropriate or inappropriate use of organizational information resources by individuals in other organizations. In some instances, only individuals’ home organizations have the appropriate knowledge to make such determinations, thus requiring the sharing of audit information among organizations.
  GUIDANCE
  tag nist: ['AU-16 (2)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag odp: %w{au_16_02_odp_01 au_16_02_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AU-16 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
