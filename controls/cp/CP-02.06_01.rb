control 'CP-02(06)[01]' do
  impact 0.5
  title "the transfer of #{input('cp_02_06_odp')} mission and business functions to alternate processing and/or storage sites with minimal or no loss of operational continuity is planned for;"
  desc <<~DESC
    Plan for the transfer of #{input('cp_02_06_odp')} mission and business functions to alternate processing and/or storage sites with minimal or no loss of operational continuity and sustain that continuity through system restoration to primary processing and/or storage sites.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the transfer of #{input('cp_02_06_odp')} mission and business functions to alternate processing and/or storage sites with minimal or no loss of operational continuity is planned for;

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency operations for the system; contingency plan; business impact assessment; alternate processing site agreements; alternate storage site agreements; contingency plan testing documentation; contingency plan test results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning and plan implementation responsibilities; organizational personnel with knowledge of requirements for mission and business functions; organizational personnel with information security responsibilities
      TEST: Organizational processes for transfer of essential mission and business functions to alternate processing/storage sites
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may choose to conduct contingency planning activities for alternate processing and storage sites as part of business continuity planning or business impact analyses. Primary processing and/or storage sites defined by organizations as part of contingency planning may change depending on the circumstances associated with the contingency.
  GUIDANCE
  tag nist: ['CP-2 (6)']
  tag control: 'CP-2 (6)'
  tag objective: 'CP-02(06)[01]'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag control_cp_2_6: true
  tag odp: %w{cp_02_06_odp}

  describe 'NIST SP 800-53A Rev 5 objective CP-02(06)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
