control 'PT-08c.' do
  impact 0.5
  title "a matching notice is published in the Federal Register when a system or organization processes information for the purpose of conducting a matching program;"
  desc <<~DESC
    When a system or organization processes information for the purpose of conducting a matching program:
      a. Obtain approval from the Data Integrity Board to conduct the matching program;
      b. Develop and enter into a computer matching agreement;
      c. Publish a matching notice in the Federal Register;
      d. Independently verify the information produced by the matching program before taking adverse action against an individual, if required; and
      e. Provide individuals with notice and an opportunity to contest the findings before taking adverse action against an individual.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a matching notice is published in the Federal Register when a system or organization processes information for the purpose of conducting a matching program;

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; privacy notice; Privacy Act system of records; Federal Register notices; Data Integrity Board determinations; contracts; information sharing agreements; memoranda of understanding; governing requirements; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for supporting and/or implementing personally identifiable information processing; matching program
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) establishes requirements for federal and non-federal agencies if they engage in a matching program. In general, a matching program is a computerized comparison of records from two or more automated [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) systems of records or an automated system of records and automated records maintained by a non-federal agency (or agent thereof). A matching program either pertains to federal benefit programs or federal personnel or payroll records. A federal benefit match is performed to determine or verify eligibility for payments under federal benefit programs or to recoup payments or delinquent debts under federal benefit programs. A matching program involves not just the matching activity itself but also the investigative follow-up and ultimate action, if any.
  GUIDANCE
  tag nist: ['PT-8']
  tag control: 'PT-8'
  tag objective: 'PT-08c.'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pt_8: true

  describe 'NIST SP 800-53A Rev 5 objective PT-08c.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
