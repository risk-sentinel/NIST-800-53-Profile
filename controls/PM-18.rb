control 'PM-18' do
  impact 0.5
  title 'Privacy Program Plan'
  desc <<~DESC
    a. Develop and disseminate an organization-wide privacy program plan that provides an overview of the agency’s privacy program, and:
      1. Includes a description of the structure of the privacy program and the resources dedicated to the privacy program;
      2. Provides an overview of the requirements for the privacy program and a description of the privacy program management controls and common controls in place or planned for meeting those requirements;
      3. Includes the role of the senior agency official for privacy and the identification and assignment of roles of other privacy officials and staff and their responsibilities;
      4. Describes management commitment, compliance, and the strategic goals and objectives of the privacy program;
      5. Reflects coordination among organizational entities responsible for the different aspects of privacy; and
      6. Is approved by a senior official with responsibility and accountability for the privacy risk being incurred to organizational operations (including mission, functions, image, and reputation), organizational assets, individuals, other organizations, and the Nation; and
    b. Update the plan #{input('pm_18_odp')} and to address changes in federal privacy laws and policy and organizational changes and problems identified during plan implementation or privacy control assessments.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-18a.
        PM-18a.[01] an organization-wide privacy program plan that provides an overview of the agency’s privacy program is developed;
        PM-18a.01
          PM-18a.01[01] the privacy program plan includes a description of the structure of the privacy program;
          PM-18a.01[02] the privacy program plan includes a description of the resources dedicated to the privacy program;
        PM-18a.02
          PM-18a.02[01] the privacy program plan provides an overview of the requirements for the privacy program;
          PM-18a.02[02] the privacy program plan provides a description of the privacy program management controls in place or planned for meeting the requirements of the privacy program;
          PM-18a.02[03] the privacy program plan provides a description of common controls in place or planned for meeting the requirements of the privacy program;
        PM-18a.03
          PM-18a.03[01] the privacy program plan includes the role of the senior agency official for privacy;
          PM-18a.03[02] the privacy program plan includes the identification and assignment of the roles of other privacy officials and staff and their responsibilities;
        PM-18a.04
          PM-18a.04[01] the privacy program plan describes management commitment;
          PM-18a.04[02] the privacy program plan describes compliance;
          PM-18a.04[03] the privacy program plan describes the strategic goals and objectives of the privacy program;
        PM-18a.05 the privacy program plan reflects coordination among organizational entities responsible for the different aspects of privacy;
        PM-18a.06 the privacy program plan is approved by a senior official with responsibility and accountability for the privacy risk being incurred by organizational operations (including, mission, functions, image, and reputation), organizational assets, individuals, other organizations, and the Nation;
        PM-18a.[02] the privacy program plan is disseminated;
      PM-18b.
        PM-18b.[01] the privacy program plan is updated #{input('pm_18_odp')};
        PM-18b.[02] the privacy program plan is updated to address changes in federal privacy laws and policies;
        PM-18b.[03] the privacy program plan is updated to address organizational changes;
        PM-18b.[04] the privacy program plan is updated to address problems identified during plan implementation or privacy control assessments.

    Assessment methods and objects:
      EXAMINE: Privacy program plan; procedures addressing program plan development and implementation; procedures addressing program plan reviews, updates, and approvals; procedures addressing coordination of the program plan with relevant entities; records of program plan reviews, updates, and approvals; other relevant documents or records
      INTERVIEW: Organizational personnel with privacy program planning and plan implementation responsibilities; organizational personnel with privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A privacy program plan is a formal document that provides an overview of an organization’s privacy program, including a description of the structure of the privacy program, the resources dedicated to the privacy program, the role of the senior agency official for privacy and other privacy officials and staff, the strategic goals and objectives of the privacy program, and the program management controls and common controls in place or planned for meeting applicable privacy requirements and managing privacy risks. Privacy program plans can be represented in single documents or compilations of documents.

    The senior agency official for privacy is responsible for designating which privacy controls the organization will treat as program management, common, system-specific, and hybrid controls. Privacy program plans provide sufficient information about the privacy program management and common controls (including the specification of parameters and assignment and selection operations explicitly or by reference) to enable control implementations that are unambiguously compliant with the intent of the plans and a determination of the risk incurred if the plans are implemented as intended.

    Program management controls are generally implemented at the organization level and are essential for managing the organization’s privacy program. Program management controls are distinct from common, system-specific, and hybrid controls because program management controls are independent of any particular information system. Together, the privacy plans for individual systems and the organization-wide privacy program plan provide complete coverage for the privacy controls employed within the organization.

    Common controls are documented in an appendix to the organization’s privacy program plan unless the controls are included in a separate privacy plan for a system. The organization-wide privacy program plan indicates which separate privacy plans contain descriptions of privacy controls.
  GUIDANCE
  tag nist: ['PM-18']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag odp: %w{pm_18_odp}

  describe 'NIST SP 800-53 Rev 5 control PM-18' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
