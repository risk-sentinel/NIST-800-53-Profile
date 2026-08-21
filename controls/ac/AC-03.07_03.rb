control 'AC-03(07)[03]' do
  impact 0.5
  title "access is controlled based on #{input('ac_03_07_odp_01')} and #{input('ac_03_07_odp_02')}."
  desc <<~DESC
    Enforce a role-based access control policy over defined subjects and objects and control access based upon #{input('ac_3_7_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      access is controlled based on #{input('ac_03_07_odp_01')} and #{input('ac_03_07_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; role-based access control policies; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; list of roles, users, and associated privileges required to control system access; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing role-based access control policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Role-based access control (RBAC) is an access control policy that enforces access to objects and system functions based on the defined role (i.e., job function) of the subject. Organizations can create specific roles based on job functions and the authorizations (i.e., privileges) to perform needed operations on the systems associated with the organization-defined roles. When users are assigned to specific roles, they inherit the authorizations or privileges defined for those roles. RBAC simplifies privilege administration for organizations because privileges are not assigned directly to every user (which can be a large number of individuals) but are instead acquired through role assignments. RBAC can also increase privacy and security risk if individuals assigned to a role are given access to information beyond what they need to support organizational missions or business functions. RBAC can be implemented as a mandatory or discretionary form of access control. For organizations implementing RBAC with mandatory access controls, the requirements in [AC-3(3)](#ac-3.3) define the scope of the subjects and objects covered by the policy.
  GUIDANCE
  tag nist: ['AC-3 (7)']
  tag control: 'AC-3 (7)'
  tag objective: 'AC-03(07)[03]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_3_7: true
  tag odp: %w{ac_03_07_odp_01 ac_03_07_odp_02 ac_3_7_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective AC-03(07)[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
