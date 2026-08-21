control 'AC-03(04)[02]' do
  impact 0.5
  title "#{input('ac_03_04_odp_02')} is enforced over the set of covered objects specified in the policy;"
  desc <<~DESC
    Enforce #{input('ac_3_4_prm_1')} over the set of covered subjects and objects specified in the policy, and where the policy specifies that a subject that has been granted access to information can do one or more of the following:
      (a) Pass the information to any other subjects or objects;
      (b) Grant its privileges to other subjects;
      (c) Change security attributes on subjects, objects, the system, or the system’s components;
      (d) Choose the security attributes to be associated with newly created or revised objects; or
      (e) Change the rules governing access control.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_03_04_odp_02')} is enforced over the set of covered objects specified in the policy;

    Assessment methods and objects:
      EXAMINE: Access control policy; discretionary access control policies; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; list of subjects and objects (i.e., users and resources) requiring enforcement of discretionary access control policies; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing discretionary access control policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    When discretionary access control policies are implemented, subjects are not constrained with regard to what actions they can take with information for which they have already been granted access. Thus, subjects that have been granted access to information are not prevented from passing the information to other subjects or objects (i.e., subjects have the discretion to pass). Discretionary access control can operate in conjunction with mandatory access control as described in [AC-3(3)](#ac-3.3) and [AC-3(15)](#ac-3.15) . A subject that is constrained in its operation by mandatory access control policies can still operate under the less rigorous constraints of discretionary access control. Therefore, while [AC-3(3)](#ac-3.3) imposes constraints that prevent a subject from passing information to another subject operating at a different impact or classification level, [AC-3(4)](#ac-3.4) permits the subject to pass the information to any subject at the same impact or classification level. The policy is bounded by the system. Once the information is passed outside of system control, additional means may be required to ensure that the constraints remain in effect. While traditional definitions of discretionary access control require identity-based access control, that limitation is not required for this particular use of discretionary access control.
  GUIDANCE
  tag nist: ['AC-3 (4)']
  tag control: 'AC-3 (4)'
  tag objective: 'AC-03(04)[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_3_4: true
  tag odp: %w{ac_03_04_odp_02 ac_3_4_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective AC-03(04)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
