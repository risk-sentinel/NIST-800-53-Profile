control 'PS-9' do
  impact 0.5
  title 'Position Descriptions'
  desc <<~DESC
    Incorporate security and privacy roles and responsibilities into organizational position descriptions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PS-09[01] security roles and responsibilities are incorporated into organizational position descriptions;
      PS-09[02] privacy roles and responsibilities are incorporated into organizational position descriptions.

    Assessment methods and objects:
      EXAMINE: Personnel security policy; personnel security procedures; procedures addressing position descriptions; security and privacy position descriptions; system security plan; privacy plan; privacy program plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with human capital management responsibilities
      TEST: Organizational processes for managing position descriptions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Specification of security and privacy roles in individual organizational position descriptions facilitates clarity in understanding the security or privacy responsibilities associated with the roles and the role-based security and privacy training requirements for the roles.
  GUIDANCE
  tag nist: ['PS-9']
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control PS-9' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
