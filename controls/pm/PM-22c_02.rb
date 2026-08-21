control 'PM-22c.[02]' do
  impact 0.5
  title "the procedures address disseminating notice of corrected or deleted personally identifiable information to individuals or other appropriate entities;"
  desc <<~DESC
    Develop and document organization-wide policies and procedures for:
      a. Reviewing for the accuracy, relevance, timeliness, and completeness of personally identifiable information across the information life cycle;
      b. Correcting or deleting inaccurate or outdated personally identifiable information;
      c. Disseminating notice of corrected or deleted personally identifiable information to individuals or other appropriate entities; and
      d. Appeals of adverse decisions on correction or deletion requests.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the procedures address disseminating notice of corrected or deleted personally identifiable information to individuals or other appropriate entities;

    Assessment methods and objects:
      EXAMINE: Privacy program plan; policies and procedures addressing personally identifiable information quality management, information life cycle documentation, and sample notices of correction or deletion; records of monitoring PII quality management practices; documentation of reviews and updates of policies and procedures
      INTERVIEW: Organizational personnel with privacy program information dissemination responsibilities; organizational personnel with privacy responsibilities
      TEST: [Organizational processes for data quality and personally identifiable information quality management procedures; mechanisms supporting and/or implementing quality management requirements
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Personally identifiable information quality management includes steps that organizations take to confirm the accuracy and relevance of personally identifiable information throughout the information life cycle. The information life cycle includes the creation, collection, use, processing, storage, maintenance, dissemination, disclosure, and disposition of personally identifiable information. Organizational policies and procedures for personally identifiable information quality management are important because inaccurate or outdated personally identifiable information maintained by organizations may cause problems for individuals. Organizations consider the quality of personally identifiable information involved in business functions where inaccurate information may result in adverse decisions or the denial of benefits and services, or the disclosure of the information may cause stigmatization. Correct information, in certain circumstances, can cause problems for individuals that outweigh the benefits of organizations maintaining the information. Organizations consider creating policies and procedures for the removal of such information.

    The senior agency official for privacy ensures that practical means and mechanisms exist and are accessible for individuals or their authorized representatives to seek the correction or deletion of personally identifiable information. Processes for correcting or deleting data are clearly defined and publicly available. Organizations use discretion in determining whether data is to be deleted or corrected based on the scope of requests, the changes sought, and the impact of the changes. Additionally, processes include the provision of responses to individuals of decisions to deny requests for correction or deletion. The responses include the reasons for the decisions, a means to record individual objections to the decisions, and a means of requesting reviews of the initial determinations.

    Organizations notify individuals or their designated representatives when their personally identifiable information is corrected or deleted to provide transparency and confirm the completed action. Due to the complexity of data flows and storage, other entities may need to be informed of the correction or deletion. Notice supports the consistent correction and deletion of personally identifiable information across the data ecosystem.
  GUIDANCE
  tag nist: ['PM-22']
  tag control: 'PM-22'
  tag objective: 'PM-22c.[02]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_22: true

  describe 'NIST SP 800-53A Rev 5 objective PM-22c.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
