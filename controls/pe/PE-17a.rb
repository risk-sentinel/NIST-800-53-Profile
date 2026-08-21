control 'PE-17a.' do
  impact 0.5
  title "#{input('pe_17_odp_01')} are determined and documented;"
  desc <<~DESC
    a. Determine and document the #{input('pe_17_odp_01')} allowed for use by employees;
    b. Employ the following controls at alternate work sites: #{input('pe_17_odp_02')};
    c. Assess the effectiveness of controls at alternate work sites; and
    d. Provide a means for employees to communicate with information security and privacy personnel in case of incidents.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('pe_17_odp_01')} are determined and documented;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing alternate work sites for organizational personnel; list of security controls required for alternate work sites; assessments of security controls at alternate work sites; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel approving the use of alternate work sites; organizational personnel using alternate work sites; organizational personnel assessing controls at alternate work sites; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for security and privacy at alternate work sites; mechanisms supporting alternate work sites; security and privacy controls employed at alternate work sites; means of communication between personnel at alternate work sites and security and privacy personnel
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Alternate work sites include government facilities or the private residences of employees. While distinct from alternative processing sites, alternate work sites can provide readily available alternate locations during contingency operations. Organizations can define different sets of controls for specific alternate work sites or types of sites depending on the work-related activities conducted at the sites. Implementing and assessing the effectiveness of organization-defined controls and providing a means to communicate incidents at alternate work sites supports the contingency planning activities of organizations.
  GUIDANCE
  tag nist: ['PE-17']
  tag control: 'PE-17'
  tag objective: 'PE-17a.'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_17: true
  tag odp: %w{pe_17_odp_01 pe_17_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PE-17a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
