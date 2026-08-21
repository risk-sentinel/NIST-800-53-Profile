control 'AC-06(02)' do
  impact 0.5
  title "users of system accounts (or roles) with access to #{input('ac_06_02_odp')} are required to use non-privileged accounts or roles when accessing non-security functions."
  desc <<~DESC
    Require that users of system accounts (or roles) with access to #{input('ac_06_02_odp')} use non-privileged accounts or roles, when accessing nonsecurity functions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      users of system accounts (or roles) with access to #{input('ac_06_02_odp')} are required to use non-privileged accounts or roles when accessing non-security functions.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing least privilege; list of system-generated security functions or security-relevant information assigned to system accounts or roles; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for defining least privileges necessary to accomplish specified tasks; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms implementing least privilege functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Requiring the use of non-privileged accounts when accessing nonsecurity functions limits exposure when operating from within privileged accounts or roles. The inclusion of roles addresses situations where organizations implement access control policies, such as role-based access control, and where a change of role provides the same degree of assurance in the change of access authorizations for the user and the processes acting on behalf of the user as would be provided by a change between a privileged and non-privileged account.
  GUIDANCE
  tag nist: ['AC-6 (2)']
  tag control: 'AC-6 (2)'
  tag objective: 'AC-06(02)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_6_2: true
  tag odp: %w{ac_06_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-06(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
