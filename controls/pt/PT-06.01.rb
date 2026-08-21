control 'PT-06(01)' do
  impact 0.5
  title "all routine uses published in the system of records notice are reviewed #{input('pt_06_01_odp')} to ensure continued accuracy, and to ensure that routine uses continue to be compatible with the purpose for which the information was collected."
  desc <<~DESC
    Review all routine uses published in the system of records notice at #{input('pt_06_01_odp')} to ensure continued accuracy, and to ensure that routine uses continue to be compatible with the purpose for which the information was collected.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      all routine uses published in the system of records notice are reviewed #{input('pt_06_01_odp')} to ensure continued accuracy, and to ensure that routine uses continue to be compatible with the purpose for which the information was collected.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; privacy notice; Privacy Act system of records; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for reviewing system of records notices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) routine use is a particular kind of disclosure of a record outside of the federal agency maintaining the system of records. A routine use is an exception to the [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) prohibition on the disclosure of a record in a system of records without the prior written consent of the individual to whom the record pertains. To qualify as a routine use, the disclosure must be for a purpose that is compatible with the purpose for which the information was originally collected. The [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) requires agencies to describe each routine use of the records maintained in the system of records, including the categories of users of the records and the purpose of the use. Agencies may only establish routine uses by explicitly publishing them in the relevant system of records notice.
  GUIDANCE
  tag nist: ['PT-6 (1)']
  tag control: 'PT-6 (1)'
  tag objective: 'PT-06(01)'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pt_6_1: true
  tag odp: %w{pt_06_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective PT-06(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
