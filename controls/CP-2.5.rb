control 'CP-2 (5)' do
  impact 0.5
  title 'Continue Mission and Business Functions'
  desc <<~DESC
    Plan for the continuance of #{input('cp_02_05_odp')} mission and business functions with minimal or no loss of operational continuity and sustains that continuity until full system restoration at primary processing and/or storage sites.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-02(05)[01] the continuance of #{input('cp_02_05_odp')} mission and business functions with minimal or no loss of operational continuity is planned for;
      CP-02(05)[02] continuity is sustained until full system restoration at primary processing and/or storage sites.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency operations for the system; contingency plan; business impact assessment; primary processing site agreements; primary storage site agreements; alternate processing site agreements; alternate storage site agreements; contingency plan test documentation; contingency plan test results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning and plan implementation responsibilities; organizational personnel with knowledge of requirements for mission and business functions; organizational personnel with information security responsibilities
      TEST: Organizational processes for continuing missions and business functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may choose to conduct the contingency planning activities to continue mission and business functions as part of business continuity planning or business impact analyses. Primary processing and/or storage sites defined by organizations as part of contingency planning may change depending on the circumstances associated with the contingency.
  GUIDANCE
  tag nist: ['CP-2 (5)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{cp_02_05_odp}

  describe 'NIST SP 800-53 Rev 5 control CP-2 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
