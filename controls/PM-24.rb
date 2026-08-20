control 'PM-24' do
  impact 0.5
  title 'Data Integrity Board'
  desc <<~DESC
    Establish a Data Integrity Board to:
      a. Review proposals to conduct or participate in a matching program; and
      b. Conduct an annual review of all matching programs in which the agency has participated.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-24 a Data Integrity Board is established;
        PM-24a. the Data Integrity Board reviews proposals to conduct or participate in a matching program;
        PM-24b. the Data Integrity Board conducts an annual review of all matching programs in which the agency has participated.

    Assessment methods and objects:
      EXAMINE: Privacy program plan; privacy program documents relating to the Data Integrity Board, including documents establishing the board, its charter of operations, and any plans and reports; computer matching agreements and notices; information sharing agreements; memoranda of understanding; records documenting annual reviews; governing requirements, including laws, executive orders, regulations, standards, and guidance
      INTERVIEW: members of the Data Integrity Board (e.g., the chief information officer, senior information security officer, senior agency official for privacy, and agency Inspector General)
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A Data Integrity Board is the board of senior officials designated by the head of a federal agency and is responsible for, among other things, reviewing the agency’s proposals to conduct or participate in a matching program and conducting an annual review of all matching programs in which the agency has participated. As a general matter, a matching program is a computerized comparison of records from two or more automated [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) systems of records or an automated system of records and automated records maintained by a non-federal agency (or agent thereof). A matching program either pertains to Federal benefit programs or Federal personnel or payroll records. At a minimum, the Data Integrity Board includes the Inspector General of the agency, if any, and the senior agency official for privacy.
  GUIDANCE
  tag nist: ['PM-24']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true

  describe 'NIST SP 800-53 Rev 5 control PM-24' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
