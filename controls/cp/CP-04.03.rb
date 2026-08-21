control 'CP-04(03)' do
  impact 0.5
  title "the contingency plan is tested using #{input('cp_04_03_odp')}."
  desc <<~DESC
    Test the contingency plan using #{input('cp_04_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the contingency plan is tested using #{input('cp_04_03_odp')}.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency plan testing; contingency plan; automated mechanisms supporting contingency plan testing; contingency plan test documentation; contingency plan test results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan testing responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for contingency plan testing; automated mechanisms supporting contingency plan testing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms facilitate thorough and effective testing of contingency plans by providing more complete coverage of contingency issues, selecting more realistic test scenarios and environments, and effectively stressing the system and supported mission and business functions.
  GUIDANCE
  tag nist: ['CP-4 (3)']
  tag control: 'CP-4 (3)'
  tag objective: 'CP-04(03)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag control_cp_4_3: true
  tag odp: %w{cp_04_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective CP-04(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
