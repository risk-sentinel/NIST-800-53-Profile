control 'PE-16b.' do
  impact 0.5
  title "records of the system components are maintained."
  desc <<~DESC
    a. Authorize and control #{input('pe_16_prm_1')} entering and exiting the facility; and
    b. Maintain records of the system components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      records of the system components are maintained.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing the delivery and removal of system components from the facility; facility housing the system; records of items entering and exiting the facility; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for controlling system components entering and exiting the facility; organizational personnel with information security responsibilities
      TEST: Organizational process for authorizing, monitoring, and controlling system-related items entering and exiting the facility; mechanisms supporting and/or implementing, authorizing, monitoring, and controlling system-related items entering and exiting the facility
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Enforcing authorizations for entry and exit of system components may require restricting access to delivery areas and isolating the areas from the system and media libraries.
  GUIDANCE
  tag nist: ['PE-16']
  tag control: 'PE-16'
  tag objective: 'PE-16b.'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_16: true
  tag odp: %w{pe_16_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective PE-16b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
