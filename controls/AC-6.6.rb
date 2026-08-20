control 'AC-6 (6)' do
  impact 0.5
  title 'Privileged Access by Non-organizational Users'
  desc <<~DESC
    Prohibit privileged access to the system by non-organizational users.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-06(06) privileged access to the system by non-organizational users is prohibited.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing least privilege; list of system-generated privileged accounts; list of non-organizational users; system configuration settings and associated documentation; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for defining least privileges necessary to accomplish specified tasks; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms prohibiting privileged access to the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An organizational user is an employee or an individual considered by the organization to have the equivalent status of an employee. Organizational users include contractors, guest researchers, or individuals detailed from other organizations. A non-organizational user is a user who is not an organizational user. Policies and procedures for granting equivalent status of employees to individuals include a need-to-know, citizenship, and the relationship to the organization.
  GUIDANCE
  tag nist: ['AC-6 (6)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AC-6 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
