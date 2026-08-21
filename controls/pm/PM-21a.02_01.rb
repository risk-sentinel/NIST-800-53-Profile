control 'PM-21a.02[01]' do
  impact 0.5
  title "the accounting includes the name of the individual or organization to whom the disclosure was made;"
  desc <<~DESC
    a. Develop and maintain an accurate accounting of disclosures of personally identifiable information, including:
      1. Date, nature, and purpose of each disclosure; and
      2. Name and address, or other contact information of the individual or organization to which the disclosure was made;
    b. Retain the accounting of disclosures for the length of the time the personally identifiable information is maintained or five years after the disclosure is made, whichever is longer; and
    c. Make the accounting of disclosures available to the individual to whom the personally identifiable information relates upon request.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the accounting includes the name of the individual or organization to whom the disclosure was made;

    Assessment methods and objects:
      EXAMINE: Privacy program plan; disclosure policies and procedures; records of disclosures; audit logs; Privacy Act policies and procedures; system of records notice; Privacy Act exemption rules.
      INTERVIEW: Organizational personnel with privacy program responsibilities; organizational personnel with privacy responsibilities.
      TEST: Organizational processes for disclosures; mechanisms supporting the accounting of disclosures, including commercial services that provide notifications and alerts.
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The purpose of accounting of disclosures is to allow individuals to learn to whom their personally identifiable information has been disclosed, to provide a basis for subsequently advising recipients of any corrected or disputed personally identifiable information, and to provide an audit trail for subsequent reviews of organizational compliance with conditions for disclosures. For federal agencies, keeping an accounting of disclosures is required by the [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) ; agencies should consult with their senior agency official for privacy and legal counsel on this requirement and be aware of the statutory exceptions and OMB guidance relating to the provision.

    Organizations can use any system for keeping notations of disclosures, if it can construct from such a system, a document listing of all disclosures along with the required information. Automated mechanisms can be used by organizations to determine when personally identifiable information is disclosed, including commercial services that provide notifications and alerts. Accounting of disclosures may also be used to help organizations verify compliance with applicable privacy statutes and policies governing the disclosure or dissemination of information and dissemination restrictions.
  GUIDANCE
  tag nist: ['PM-21']
  tag control: 'PM-21'
  tag objective: 'PM-21a.02[01]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_21: true

  describe 'NIST SP 800-53A Rev 5 objective PM-21a.02[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
