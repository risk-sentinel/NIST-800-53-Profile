control 'PE-3 (7)' do
  impact 0.5
  title 'Physical Barriers'
  desc <<~DESC
    Limit access using physical barriers.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-03(07) physical barriers are used to limit access.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access control; list of physical barriers to limit access to the system; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Physical barriers include bollards, concrete slabs, jersey walls, and hydraulic active vehicle barriers.
  GUIDANCE
  tag nist: ['PE-3 (7)']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control PE-3 (7)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
