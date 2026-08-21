control 'PM-15' do
  impact 0.5
  title 'Security and Privacy Groups and Associations'
  desc <<~DESC
    Establish and institutionalize contact with selected groups and associations within the security and privacy communities:
      a. To facilitate ongoing security and privacy education and training for organizational personnel;
      b. To maintain currency with recommended security and privacy practices, techniques, and technologies; and
      c. To share current security and privacy information, including threats, vulnerabilities, and incidents.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-15a.
        PM-15a.[01] contact is established and institutionalized with selected groups and associations within the security community to facilitate ongoing security education and training for organizational personnel;
        PM-15a.[02] contact is established and institutionalized with selected groups and associations within the privacy community to facilitate ongoing privacy education and training for organizational personnel;
      PM-15b.
        PM-15b.[01] contact is established and institutionalized with selected groups and associations within the security community to maintain currency with recommended security practices, techniques, and technologies;
        PM-15b.[02] contact is established and institutionalized with selected groups and associations within the privacy community to maintain currency with recommended privacy practices, techniques, and technologies;
      PM-15c.
        PM-15c.[01] contact is established and institutionalized with selected groups and associations within the security community to share current security information, including threats, vulnerabilities, and incidents;
        PM-15c.[02] contact is established and institutionalized with selected groups and associations within the privacy community to share current privacy information, including threats, vulnerabilities, and incidents.

    Assessment methods and objects:
      EXAMINE: Information security program plan; privacy program plan; risk management strategy; procedures for establishing and institutionalizing contacts with security and privacy groups and associations; lists or other records of contacts with and/or membership in security and privacy groups and associations; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for establishing and institutionalizing contact with security and privacy groups and associations; organizational personnel with information security and privacy responsibilities; personnel from selected groups and associations with which the organization has established and institutionalized contact
      TEST: Organizational processes for establishing and institutionalizing contact with security and privacy groups and associations; mechanisms supporting contact with security and privacy groups and associations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Ongoing contact with security and privacy groups and associations is important in an environment of rapidly changing technologies and threats. Groups and associations include special interest groups, professional associations, forums, news groups, users’ groups, and peer groups of security and privacy professionals in similar organizations. Organizations select security and privacy groups and associations based on mission and business functions. Organizations share threat, vulnerability, and incident information as well as contextual insights, compliance techniques, and privacy problems consistent with applicable laws, executive orders, directives, policies, regulations, standards, and guidelines.
  GUIDANCE
  tag nist: ['PM-15']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control PM-15' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
