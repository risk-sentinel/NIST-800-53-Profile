control 'AC-03(15)(a)[01]' do
  impact 0.5
  title "#{input('ac_03_15_odp_01')} is enforced over the set of covered subjects specified in the policy;"
  desc <<~DESC
    (a) Enforce #{input('ac_3_15_prm_1')} over the set of covered subjects and objects specified in the policy; and
    (b) Enforce #{input('ac_3_15_prm_2')} over the set of covered subjects and objects specified in the policy.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_03_15_odp_01')} is enforced over the set of covered subjects specified in the policy;

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; list of subjects and objects (i.e., users and resources) requiring enforcement of mandatory access control policies; list of subjects and objects (i.e., users and resources) requiring enforcement of discretionary access control policies; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing mandatory and discretionary access control policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Simultaneously implementing a mandatory access control policy and a discretionary access control policy can provide additional protection against the unauthorized execution of code by users or processes acting on behalf of users. This helps prevent a single compromised user or process from compromising the entire system.
  GUIDANCE
  tag nist: ['AC-3 (15)']
  tag control: 'AC-3 (15)'
  tag objective: 'AC-03(15)(a)[01]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_3_15: true
  tag odp: %w{ac_03_15_odp_01 ac_3_15_prm_1 ac_3_15_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective AC-03(15)(a)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
