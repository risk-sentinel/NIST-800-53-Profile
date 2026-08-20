control 'MA-3 (5)' do
  impact 0.5
  title 'Execution with Privilege'
  desc <<~DESC
    Monitor the use of maintenance tools that execute with increased privilege.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-03(05) the use of maintenance tools that execute with increased privilege is monitored.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing system maintenance tools; system maintenance tools and associated documentation; list of personnel authorized to use maintenance tools; maintenance tool usage records; maintenance records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for restricting the use of maintenance tools; organizational process for monitoring maintenance tools and maintenance tool usage; mechanisms monitoring the use of maintenance tools
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Maintenance tools that execute with increased system privilege can result in unauthorized access to organizational information and assets that would otherwise be inaccessible.
  GUIDANCE
  tag nist: ['MA-3 (5)']
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control MA-3 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
