control 'PE-11' do
  impact 0.5
  title "an uninterruptible power supply is provided to facilitate #{input('pe_11_odp')} in the event of a primary power source loss."
  desc <<~DESC
    Provide an uninterruptible power supply to facilitate #{input('pe_11_odp')} in the event of a primary power source loss.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an uninterruptible power supply is provided to facilitate #{input('pe_11_odp')} in the event of a primary power source loss.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing emergency power; uninterruptible power supply; uninterruptible power supply documentation; uninterruptible power supply test records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for emergency power and/or planning; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing an uninterruptible power supply; the uninterruptable power supply
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An uninterruptible power supply (UPS) is an electrical system or mechanism that provides emergency power when there is a failure of the main power source. A UPS is typically used to protect computers, data centers, telecommunication equipment, or other electrical equipment where an unexpected power disruption could cause injuries, fatalities, serious mission or business disruption, or loss of data or information. A UPS differs from an emergency power system or backup generator in that the UPS provides near-instantaneous protection from unanticipated power interruptions from the main power source by providing energy stored in batteries, supercapacitors, or flywheels. The battery duration of a UPS is relatively short but provides sufficient time to start a standby power source, such as a backup generator, or properly shut down the system.
  GUIDANCE
  tag nist: ['PE-11']
  tag control: 'PE-11'
  tag objective: 'PE-11'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_11: true
  tag odp: %w{pe_11_odp}

  describe 'NIST SP 800-53A Rev 5 objective PE-11' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
