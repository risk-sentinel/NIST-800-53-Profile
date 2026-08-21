control 'CA-02(03)' do
  impact 0.5
  title "the results of control assessments performed by #{input('ca_02_03_odp_01')} on #{input('ca_02_03_odp_02')} are leveraged when the assessment meets #{input('ca_02_03_odp_03')}."
  desc <<~DESC
    Leverage the results of control assessments performed by #{input('ca_02_03_odp_01')} on #{input('ca_02_03_odp_02')} when the assessment meets #{input('ca_02_03_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the results of control assessments performed by #{input('ca_02_03_odp_01')} on #{input('ca_02_03_odp_02')} are leveraged when the assessment meets #{input('ca_02_03_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; procedures addressing control assessments; control assessment requirements; control assessment plan; control assessment report; control assessment evidence; plan of action and milestones; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with control assessment responsibilities; organizational personnel with information security and privacy responsibilities; personnel performing control assessments for the specified external organization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may rely on control assessments of organizational systems by other (external) organizations. Using such assessments and reusing existing assessment evidence can decrease the time and resources required for assessments by limiting the independent assessment activities that organizations need to perform. The factors that organizations consider in determining whether to accept assessment results from external organizations can vary. Such factors include the organization’s past experience with the organization that conducted the assessment, the reputation of the assessment organization, the level of detail of supporting assessment evidence provided, and mandates imposed by applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Accredited testing laboratories that support the Common Criteria Program [ISO 15408-1](#6afc1b04-c9d6-4023-adbc-f8fbe33a3c73) , the NIST Cryptographic Module Validation Program (CMVP), or the NIST Cryptographic Algorithm Validation Program (CAVP) can provide independent assessment results that organizations can leverage.
  GUIDANCE
  tag nist: ['CA-2 (3)']
  tag control: 'CA-2 (3)'
  tag objective: 'CA-02(03)'
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{}
  tag control_ca_2_3: true
  tag odp: %w{ca_02_03_odp_01 ca_02_03_odp_02 ca_02_03_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective CA-02(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
