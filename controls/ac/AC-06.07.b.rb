control 'AC-06(07)(b)' do
  impact 0.5
  title "privileges are reassigned or removed, if necessary, to correctly reflect organizational mission and business needs."
  desc <<~DESC
    (a) Review #{input('ac_06_07_odp_01')} the privileges assigned to #{input('ac_06_07_odp_02')} to validate the need for such privileges; and
    (b) Reassign or remove privileges, if necessary, to correctly reflect organizational mission and business needs.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      privileges are reassigned or removed, if necessary, to correctly reflect organizational mission and business needs.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing least privilege; list of system-generated roles or classes of users and assigned privileges; system design documentation; system configuration settings and associated documentation; validation reviews of privileges assigned to roles or classes or users; records of privilege removals or reassignments for roles or classes of users; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for reviewing least privileges necessary to accomplish specified tasks; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms implementing review of user privileges
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The need for certain assigned user privileges may change over time to reflect changes in organizational mission and business functions, environments of operation, technologies, or threats. A periodic review of assigned user privileges is necessary to determine if the rationale for assigning such privileges remains valid. If the need cannot be revalidated, organizations take appropriate corrective actions.
  GUIDANCE
  tag nist: ['AC-6 (7)']
  tag control: 'AC-6 (7)'
  tag objective: 'AC-06(07)(b)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_6_7: true
  tag odp: %w{ac_06_07_odp_01 ac_06_07_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AC-06(07)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
