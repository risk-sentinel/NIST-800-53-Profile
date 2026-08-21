control 'RA-02a.' do
  impact 0.5
  title "the system and the information it processes, stores, and transmits are categorized;"
  desc <<~DESC
    a. Categorize the system and information it processes, stores, and transmits;
    b. Document the security categorization results, including supporting rationale, in the security plan for the system; and
    c. Verify that the authorizing official or authorizing official designated representative reviews and approves the security categorization decision.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the system and the information it processes, stores, and transmits are categorized;

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; security planning policy and procedures; procedures addressing security categorization of organizational information and systems; security categorization documentation; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with security categorization and risk assessment responsibilities; organizational personnel with security and privacy responsibilities
      TEST: Organizational processes for security categorization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security categories describe the potential adverse impacts or negative consequences to organizational operations, organizational assets, and individuals if organizational information and systems are compromised through a loss of confidentiality, integrity, or availability. Security categorization is also a type of asset loss characterization in systems security engineering processes that is carried out throughout the system development life cycle. Organizations can use privacy risk assessments or privacy impact assessments to better understand the potential adverse effects on individuals. [CNSSI 1253](#4e4fbc93-333d-45e6-a875-de36b878b6b9) provides additional guidance on categorization for national security systems.

    Organizations conduct the security categorization process as an organization-wide activity with the direct involvement of chief information officers, senior agency information security officers, senior agency officials for privacy, system owners, mission and business owners, and information owners or stewards. Organizations consider the potential adverse impacts to other organizations and, in accordance with [USA PATRIOT](#13f0c39d-eaf7-417a-baef-69a041878bb5) and Homeland Security Presidential Directives, potential national-level adverse impacts.

    Security categorization processes facilitate the development of inventories of information assets and, along with [CM-8](#cm-8) , mappings to specific system components where information is processed, stored, or transmitted. The security categorization process is revisited throughout the system development life cycle to ensure that the security categories remain accurate and relevant.
  GUIDANCE
  tag nist: ['RA-2']
  tag control: 'RA-2'
  tag objective: 'RA-02a.'
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ra_2: true

  describe 'NIST SP 800-53A Rev 5 objective RA-02a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
