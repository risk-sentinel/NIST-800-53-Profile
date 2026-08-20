control 'MA-3 (6)' do
  impact 0.5
  title 'Software Updates and Patches'
  desc <<~DESC
    Inspect maintenance tools to ensure the latest software updates and patches are installed.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-03(06) maintenance tools are inspected to ensure that the latest software updates and patches are installed.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing system maintenance tools; system maintenance tools and associated documentation; list of personnel authorized to use maintenance tools; maintenance tool usage records; maintenance records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for inspecting maintenance tools; organizational processes for maintenance tools updates; mechanisms supporting and/or implementing the inspection of maintenance tools; mechanisms supporting and/or implementing maintenance tool updates.
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Maintenance tools using outdated and/or unpatched software can provide a threat vector for adversaries and result in a significant vulnerability for organizations.
  GUIDANCE
  tag nist: ['MA-3 (6)']
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control MA-3 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
