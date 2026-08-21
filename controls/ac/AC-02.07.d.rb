control 'AC-02(07)(d)' do
  impact 0.5
  title "access is revoked when privileged role or attribute assignments are no longer appropriate."
  desc <<~DESC
    (a) Establish and administer privileged user accounts in accordance with #{input('ac_02_07_odp')};
    (b) Monitor privileged role or attribute assignments;
    (c) Monitor changes to roles or attributes; and
    (d) Revoke access when privileged role or attribute assignments are no longer appropriate.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      access is revoked when privileged role or attribute assignments are no longer appropriate.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing account management; system design documentation; system configuration settings and associated documentation; system-generated list of privileged user accounts and associated roles; records of actions taken when privileged role assignments are no longer appropriate; system audit records; audit tracking and monitoring reports; system monitoring records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing account management functions; mechanisms monitoring privileged role assignments
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Privileged roles are organization-defined roles assigned to individuals that allow those individuals to perform certain security-relevant functions that ordinary users are not authorized to perform. Privileged roles include key management, account management, database administration, system and network administration, and web administration. A role-based access scheme organizes permitted system access and privileges into roles. In contrast, an attribute-based access scheme specifies allowed system access and privileges based on attributes.
  GUIDANCE
  tag nist: ['AC-2 (7)']
  tag control: 'AC-2 (7)'
  tag objective: 'AC-02(07)(d)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_2_7: true
  tag odp: %w{ac_02_07_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-02(07)(d)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
