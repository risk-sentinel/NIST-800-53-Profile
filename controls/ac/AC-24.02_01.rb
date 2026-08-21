control 'AC-24(02)[01]' do
  impact 0.5
  title "access control decisions are enforced based on #{input('ac_24_02_odp_01')} that do not include the identity of the user or process acting on behalf of the user (if selected);"
  desc <<~DESC
    Enforce access control decisions based on #{input('ac_24_2_prm_1')} that do not include the identity of the user or process acting on behalf of the user.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      access control decisions are enforced based on #{input('ac_24_02_odp_01')} that do not include the identity of the user or process acting on behalf of the user (if selected);

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing access enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In certain situations, it is important that access control decisions can be made without information regarding the identity of the users issuing the requests. These are generally instances where preserving individual privacy is of paramount importance. In other situations, user identification information is simply not needed for access control decisions, and especially in the case of distributed systems, transmitting such information with the needed degree of assurance may be very expensive or difficult to accomplish. MAC, RBAC, ABAC, and label-based control policies, for example, might not include user identity as an attribute.
  GUIDANCE
  tag nist: ['AC-24 (2)']
  tag control: 'AC-24 (2)'
  tag objective: 'AC-24(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_24_2: true
  tag odp: %w{ac_24_02_odp_01 ac_24_2_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective AC-24(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
