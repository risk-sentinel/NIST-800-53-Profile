control 'PM-19' do
  impact 0.5
  title 'Privacy Program Leadership Role'
  desc <<~DESC
    Appoint a senior agency official for privacy with the authority, mission, accountability, and resources to coordinate, develop, and implement, applicable privacy requirements and manage privacy risks through the organization-wide privacy program.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-19[01] a senior agency official for privacy with authority, mission, accountability, and resources is appointed;
      PM-19[02] the senior agency official for privacy coordinates applicable privacy requirements;
      PM-19[03] the senior agency official for privacy develops applicable privacy requirements;
      PM-19[04] the senior agency official for privacy implements applicable privacy requirements;
      PM-19[05] the senior agency official for privacy manages privacy risks through the organization-wide privacy program.

    Assessment methods and objects:
      EXAMINE: Privacy program documents, including policies, procedures, plans, and reports; public privacy notices, including Federal Register notices; privacy impact assessments; privacy risk assessments; Privacy Act statements; system of records notices; computer matching agreements and notices; contracts, information sharing agreements, and memoranda of understanding; governing requirements, including laws, executive orders, regulations, standards, and guidance; other relevant documents or records
      INTERVIEW: Organizational personnel with privacy program planning and plan implementation responsibilities; organizational personnel with privacy responsibilities; senior agency official for privacy; privacy officials
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The privacy officer is an organizational official. For federal agencies—as defined by applicable laws, executive orders, directives, regulations, policies, standards, and guidelines—this official is designated as the senior agency official for privacy. Organizations may also refer to this official as the chief privacy officer. The senior agency official for privacy also has roles on the data management board (see [PM-23](#pm-23) ) and the data integrity board (see [PM-24](#pm-24)).
  GUIDANCE
  tag nist: ['PM-19']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true

  describe 'NIST SP 800-53 Rev 5 control PM-19' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
