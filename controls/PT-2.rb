control 'PT-2' do
  impact 0.5
  title 'Authority to Process Personally Identifiable Information'
  desc <<~DESC
    a. Determine and document the #{input('pt_02_odp_01')} that permits the #{input('pt_02_odp_02')} of personally identifiable information; and
    b. Restrict the #{input('pt_02_odp_03')} of personally identifiable information to only that which is authorized.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PT-02a. the #{input('pt_02_odp_01')} that permits the #{input('pt_02_odp_02')} of personally identifiable information is determined and documented;
      PT-02b. the #{input('pt_02_odp_03')} of personally identifiable information is restricted to only that which is authorized.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for authorizing the processing of personally identifiable information; mechanisms supporting and/or implementing the restriction of personally identifiable information processing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The processing of personally identifiable information is an operation or set of operations that the information system or organization performs with respect to personally identifiable information across the information life cycle. Processing includes but is not limited to creation, collection, use, processing, storage, maintenance, dissemination, disclosure, and disposal. Processing operations also include logging, generation, and transformation, as well as analysis techniques, such as data mining.

    Organizations may be subject to laws, executive orders, directives, regulations, or policies that establish the organization’s authority and thereby limit certain types of processing of personally identifiable information or establish other requirements related to the processing. Organizational personnel consult with the senior agency official for privacy and legal counsel regarding such authority, particularly if the organization is subject to multiple jurisdictions or sources of authority. For organizations whose processing is not determined according to legal authorities, the organization’s policies and determinations govern how they process personally identifiable information. While processing of personally identifiable information may be legally permissible, privacy risks may still arise. Privacy risk assessments can identify the privacy risks associated with the authorized processing of personally identifiable information and support solutions to manage such risks.

    Organizations consider applicable requirements and organizational policies to determine how to document this authority. For federal agencies, the authority to process personally identifiable information is documented in privacy policies and notices, system of records notices, privacy impact assessments, [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) statements, computer matching agreements and notices, contracts, information sharing agreements, memoranda of understanding, and other documentation.

    Organizations take steps to ensure that personally identifiable information is only processed for authorized purposes, including training organizational personnel on the authorized processing of personally identifiable information and monitoring and auditing organizational use of personally identifiable information.
  GUIDANCE
  tag nist: ['PT-2']
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag odp: %w{pt_02_odp_01 pt_02_odp_02 pt_02_odp_03}

  describe 'NIST SP 800-53 Rev 5 control PT-2' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
