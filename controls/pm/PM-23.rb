control 'PM-23' do
  impact 0.5
  title "a Data Governance Body consisting of #{input('pm_23_odp_01')} with #{input('pm_23_odp_02')} is established."
  desc <<~DESC
    Establish a Data Governance Body consisting of #{input('pm_23_odp_01')} with #{input('pm_23_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a Data Governance Body consisting of #{input('pm_23_odp_01')} with #{input('pm_23_odp_02')} is established.

    Assessment methods and objects:
      EXAMINE: Privacy program plan; documentation relating to the Data Governance Body, including documents establishing such a body, its charter of operations, and any plans and reports; records of board meetings and decisions; records of requests to review data; policies, procedures, and standards that facilitate data governance
      INTERVIEW: Officials serving on the Data Governance Body (e.g., chief information officer, senior agency information security officer, and senior agency official for privacy)
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A Data Governance Body can help ensure that the organization has coherent policies and the ability to balance the utility of data with security and privacy requirements. The Data Governance Body establishes policies, procedures, and standards that facilitate data governance so that data, including personally identifiable information, is effectively managed and maintained in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidance. Responsibilities can include developing and implementing guidelines that support data modeling, quality, integrity, and the de-identification needs of personally identifiable information across the information life cycle as well as reviewing and approving applications to release data outside of the organization, archiving the applications and the released data, and performing post-release monitoring to ensure that the assumptions made as part of the data release continue to be valid. Members include the chief information officer, senior agency information security officer, and senior agency official for privacy. Federal agencies are required to establish a Data Governance Body with specific roles and responsibilities in accordance with the [EVIDACT](#511da9ca-604d-43f7-be41-b862085420a9) and policies set forth under [OMB M-19-23](#d886c141-c832-4ad7-ac6d-4b94f4b550d3).
  GUIDANCE
  tag nist: ['PM-23']
  tag control: 'PM-23'
  tag objective: 'PM-23'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}
  tag control_pm_23: true
  tag odp: %w{pm_23_odp_01 pm_23_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PM-23' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
