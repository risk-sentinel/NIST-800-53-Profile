control 'CP-9 (2)' do
  impact 0.5
  title 'Test Restoration Using Sampling'
  desc <<~DESC
    Use a sample of backup information in the restoration of selected system functions as part of contingency plan testing.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-09(02) a sample of backup information in the restoration of selected system functions is used as part of contingency plan testing.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system backup; contingency plan; system backup test results; contingency plan test documentation; contingency plan test results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system backup responsibilities; organizational personnel with contingency planning/contingency plan testing responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for conducting system backups; mechanisms supporting and/or implementing system backups
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations need assurance that system functions can be restored correctly and can support established organizational missions. To ensure that the selected system functions are thoroughly exercised during contingency plan testing, a sample of backup information is retrieved to determine whether the functions are operating as intended. Organizations can determine the sample size for the functions and backup information based on the level of assurance needed.
  GUIDANCE
  tag nist: ['CP-9 (2)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control CP-9 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
