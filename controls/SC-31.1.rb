control 'SC-31 (1)' do
  impact 0.5
  title 'Test Covert Channels for Exploitability'
  desc <<~DESC
    Test a subset of the identified covert channels to determine the channels that are exploitable.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-31(01) a subset of the identified covert channels is tested to determine the channels that are exploitable.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing covert channel analysis; system design documentation; system configuration settings and associated documentation; list of covert channels; covert channel analysis documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with covert channel analysis responsibilities
      TEST: Organizational process for testing covert channels; mechanisms supporting and/or implementing the testing of covert channel analysis
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['SC-31 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SC-31 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
