control 'SR-11(02)[02]' do
  impact 0.5
  title "configuration control over serviced or repaired #{input('sr_11_02_odp')} awaiting return to service is maintained."
  desc <<~DESC
    Maintain configuration control over the following system components awaiting service or repair and serviced or repaired components awaiting return to service: #{input('sr_11_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      configuration control over serviced or repaired #{input('sr_11_02_odp')} awaiting return to service is maintained.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management plan; configuration control procedures; acquisition documentation; service level agreements; acquisition contracts for the system component; inter-organizational agreements and procedures; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for establishing inter-organizational agreements and procedures with supply chain entities; organizational configuration control processes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['SR-11 (2)']
  tag control: 'SR-11 (2)'
  tag objective: 'SR-11(02)[02]'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sr_11_2: true
  tag odp: %w{sr_11_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective SR-11(02)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
