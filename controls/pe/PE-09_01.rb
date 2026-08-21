control 'PE-09[01]' do
  impact 0.5
  title "power equipment for the system is protected from damage and destruction;"
  desc <<~DESC
    Protect power equipment and power cabling for the system from damage and destruction.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      power equipment for the system is protected from damage and destruction;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing power equipment/cabling protection; facilities housing power equipment/cabling; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility to protect power equipment/cabling; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing the protection of power equipment/cabling
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations determine the types of protection necessary for the power equipment and cabling employed at different locations that are both internal and external to organizational facilities and environments of operation. Types of power equipment and cabling include internal cabling and uninterruptable power sources in offices or data centers, generators and power cabling outside of buildings, and power sources for self-contained components such as satellites, vehicles, and other deployable systems.
  GUIDANCE
  tag nist: ['PE-9']
  tag control: 'PE-9'
  tag objective: 'PE-09[01]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_9: true

  describe 'NIST SP 800-53A Rev 5 objective PE-09[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
