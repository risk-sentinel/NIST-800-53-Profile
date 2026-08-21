control 'PT-03a.' do
  impact 0.5
  title "the #{input('pt_03_odp_01')} for processing personally identifiable information is/are identified and documented;"
  desc <<~DESC
    a. Identify and document the #{input('pt_03_odp_01')} for processing personally identifiable information;
    b. Describe the purpose(s) in the public privacy notices and policies of the organization;
    c. Restrict the #{input('pt_03_odp_02')} of personally identifiable information to only that which is compatible with the identified purpose(s); and
    d. Monitor changes in processing personally identifiable information and implement #{input('pt_03_odp_03')} to ensure that any changes are made in accordance with #{input('pt_03_odp_04')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the #{input('pt_03_odp_01')} for processing personally identifiable information is/are identified and documented;

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; configuration management plan; organizational privacy notices; organizational policies; Privacy Act statements; computer matching notices; applicable Federal Register notices; documented requirements for enforcing and monitoring the processing of personally identifiable information; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for authorizing the processing of personally identifiable information; mechanisms supporting and/or implementing the management of authorized personally identifiable information processing; organizational processes for monitoring changes in processing personally identifiable information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Identifying and documenting the purpose for processing provides organizations with a basis for understanding why personally identifiable information may be processed. The term "process" includes every step of the information life cycle, including creation, collection, use, processing, storage, maintenance, dissemination, disclosure, and disposal. Identifying and documenting the purpose of processing is a prerequisite to enabling owners and operators of the system and individuals whose information is processed by the system to understand how the information will be processed. This enables individuals to make informed decisions about their engagement with information systems and organizations and to manage their privacy interests. Once the specific processing purpose has been identified, the purpose is described in the organization’s privacy notices, policies, and any related privacy compliance documentation, including privacy impact assessments, system of records notices, [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) statements, computer matching notices, and other applicable Federal Register notices.

    Organizations take steps to help ensure that personally identifiable information is processed only for identified purposes, including training organizational personnel and monitoring and auditing organizational processing of personally identifiable information.

    Organizations monitor for changes in personally identifiable information processing. Organizational personnel consult with the senior agency official for privacy and legal counsel to ensure that any new purposes that arise from changes in processing are compatible with the purpose for which the information was collected, or if the new purpose is not compatible, implement mechanisms in accordance with defined requirements to allow for the new processing, if appropriate. Mechanisms may include obtaining consent from individuals, revising privacy policies, or other measures to manage privacy risks that arise from changes in personally identifiable information processing purposes.
  GUIDANCE
  tag nist: ['PT-3']
  tag control: 'PT-3'
  tag objective: 'PT-03a.'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pt_3: true
  tag odp: %w{pt_03_odp_01 pt_03_odp_02 pt_03_odp_03 pt_03_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective PT-03a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
