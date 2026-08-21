control 'MP-6 (7)' do
  impact 0.5
  title 'Dual Authorization'
  desc <<~DESC
    Enforce dual authorization for the sanitization of #{input('mp_06_07_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MP-06(07) dual authorization for sanitization of #{input('mp_06_07_odp')} is enforced.

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media sanitization and disposal; dual authorization policy and procedures; list of system media requiring dual authorization for sanitization; authorization records; media sanitization records; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media sanitization responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes requiring dual authorization for media sanitization; mechanisms supporting and/or implementing media sanitization; mechanisms supporting and/or implementing dual authorization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations employ dual authorization to help ensure that system media sanitization cannot occur unless two technically qualified individuals conduct the designated task. Individuals who sanitize system media possess sufficient skills and expertise to determine if the proposed sanitization reflects applicable federal and organizational standards, policies, and procedures. Dual authorization also helps to ensure that sanitization occurs as intended, protecting against errors and false claims of having performed the sanitization actions. Dual authorization may also be known as two-person control. To reduce the risk of collusion, organizations consider rotating dual authorization duties to other individuals.
  GUIDANCE
  tag nist: ['MP-6 (7)']
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{}
  tag odp: %w{mp_06_07_odp}

  describe 'NIST SP 800-53 Rev 5 control MP-6 (7)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
