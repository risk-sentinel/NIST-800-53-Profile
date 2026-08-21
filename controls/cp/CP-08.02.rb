control 'CP-08(02)' do
  impact 0.5
  title "alternate telecommunications services to reduce the likelihood of sharing a single point of failure with primary telecommunications services are obtained."
  desc <<~DESC
    Obtain alternate telecommunications services to reduce the likelihood of sharing a single point of failure with primary telecommunications services.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      alternate telecommunications services to reduce the likelihood of sharing a single point of failure with primary telecommunications services are obtained.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing primary and alternate telecommunications services; contingency plan; primary and alternate telecommunications service agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan telecommunications responsibilities; organizational personnel with system recovery responsibilities; primary and alternate telecommunications service providers; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In certain circumstances, telecommunications service providers or services may share the same physical lines, which increases the vulnerability of a single failure point. It is important to have provider transparency for the actual physical transmission capability for telecommunication services.
  GUIDANCE
  tag nist: ['CP-8 (2)']
  tag control: 'CP-8 (2)'
  tag objective: 'CP-08(02)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_8_2: true

  describe 'NIST SP 800-53A Rev 5 objective CP-08(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
