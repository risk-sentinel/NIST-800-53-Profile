control 'PS-02c.' do
  impact 0.5
  title "position risk designations are reviewed and updated #{input('ps_02_odp')}."
  desc <<~DESC
    a. Assign a risk designation to all organizational positions;
    b. Establish screening criteria for individuals filling those positions; and
    c. Review and update position risk designations #{input('ps_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      position risk designations are reviewed and updated #{input('ps_02_odp')}.

    Assessment methods and objects:
      EXAMINE: Personnel security policy; procedures addressing position categorization; appropriate codes of federal regulations; list of risk designations for organizational positions; records of position risk designation reviews and updates; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for assigning, reviewing, and updating position risk designations; organizational processes for establishing screening criteria
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Position risk designations reflect Office of Personnel Management (OPM) policy and guidance. Proper position designation is the foundation of an effective and consistent suitability and personnel security program. The Position Designation System (PDS) assesses the duties and responsibilities of a position to determine the degree of potential damage to the efficiency or integrity of the service due to misconduct of an incumbent of a position and establishes the risk level of that position. The PDS assessment also determines if the duties and responsibilities of the position present the potential for position incumbents to bring about a material adverse effect on national security and the degree of that potential effect, which establishes the sensitivity level of a position. The results of the assessment determine what level of investigation is conducted for a position. Risk designations can guide and inform the types of authorizations that individuals receive when accessing organizational information and information systems. Position screening criteria include explicit information security role appointment requirements. Parts 1400 and 731 of Title 5, Code of Federal Regulations, establish the requirements for organizations to evaluate relevant covered positions for a position sensitivity and position risk designation commensurate with the duties and responsibilities of those positions.
  GUIDANCE
  tag nist: ['PS-2']
  tag control: 'PS-2'
  tag objective: 'PS-02c.'
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ps_2: true
  tag odp: %w{ps_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective PS-02c.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
