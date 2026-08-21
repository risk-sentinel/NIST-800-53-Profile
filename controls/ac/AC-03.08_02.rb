control 'AC-03(08)[02]' do
  impact 0.5
  title "revocation of access authorizations is enforced resulting from changes to the security attributes of objects based on #{input('ac_03_08_odp')}."
  desc <<~DESC
    Enforce the revocation of access authorizations resulting from changes to the security attributes of subjects and objects based on #{input('ac_03_08_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      revocation of access authorizations is enforced resulting from changes to the security attributes of objects based on #{input('ac_03_08_odp')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; rules governing revocation of access authorizations, system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing access enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Revocation of access rules may differ based on the types of access revoked. For example, if a subject (i.e., user or process acting on behalf of a user) is removed from a group, access may not be revoked until the next time the object is opened or the next time the subject attempts to access the object. Revocation based on changes to security labels may take effect immediately. Organizations provide alternative approaches on how to make revocations immediate if systems cannot provide such capability and immediate revocation is necessary.
  GUIDANCE
  tag nist: ['AC-3 (8)']
  tag control: 'AC-3 (8)'
  tag objective: 'AC-03(08)[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_3_8: true
  tag odp: %w{ac_03_08_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-03(08)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
