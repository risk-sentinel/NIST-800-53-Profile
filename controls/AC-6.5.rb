control 'AC-6 (5)' do
  impact 0.5
  title 'Privileged Accounts'
  desc <<~DESC
    Restrict privileged accounts on the system to #{input('ac_06_05_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-06(05) privileged accounts on the system are restricted to #{input('ac_06_05_odp')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing least privilege; list of system-generated privileged accounts; list of system administration personnel; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for defining least privileges necessary to accomplish specified tasks; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms implementing least privilege functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Privileged accounts, including super user accounts, are typically described as system administrator for various types of commercial off-the-shelf operating systems. Restricting privileged accounts to specific personnel or roles prevents day-to-day users from accessing privileged information or privileged functions. Organizations may differentiate in the application of restricting privileged accounts between allowed privileges for local accounts and for domain accounts provided that they retain the ability to control system configurations for key parameters and as otherwise necessary to sufficiently mitigate risk.
  GUIDANCE
  tag nist: ['AC-6 (5)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ac_06_05_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-6 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
