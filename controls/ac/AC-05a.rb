control 'AC-05a.' do
  impact 0.5
  title "#{input('ac_05_odp')} are identified and documented;"
  desc <<~DESC
    a. Identify and document #{input('ac_05_odp')} ; and
    b. Define system access authorizations to support separation of duties.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_05_odp')} are identified and documented;

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing divisions of responsibility and separation of duties; system configuration settings and associated documentation; list of divisions of responsibility and separation of duties; system access authorizations; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for defining appropriate divisions of responsibility and separation of duties; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms implementing separation of duties policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Separation of duties addresses the potential for abuse of authorized privileges and helps to reduce the risk of malevolent activity without collusion. Separation of duties includes dividing mission or business functions and support functions among different individuals or roles, conducting system support functions with different individuals, and ensuring that security personnel who administer access control functions do not also administer audit functions. Because separation of duty violations can span systems and application domains, organizations consider the entirety of systems and system components when developing policy on separation of duties. Separation of duties is enforced through the account management activities in [AC-2](#ac-2) , access control mechanisms in [AC-3](#ac-3) , and identity management activities in [IA-2](#ia-2), [IA-4](#ia-4) , and [IA-12](#ia-12).
  GUIDANCE
  tag nist: ['AC-5']
  tag control: 'AC-5'
  tag objective: 'AC-05a.'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_5: true
  tag odp: %w{ac_05_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-05a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
