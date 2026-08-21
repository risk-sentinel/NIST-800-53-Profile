control 'SR-10' do
  impact 0.5
  title "#{input('sr_10_odp_01')} are inspected #{input('sr_10_odp_02')} to detect tampering."
  desc <<~DESC
    Inspect the following systems or system components #{input('sr_10_odp_02')} to detect tampering: #{input('sr_10_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sr_10_odp_01')} are inspected #{input('sr_10_odp_02')} to detect tampering.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management plan; system and services acquisition policy; records of random inspections; inspection reports/results; assessment reports/results; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; inter-organizational agreements and procedures; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for establishing inter-organizational agreements and procedures with supply chain entities; organizational processes to inspect for tampering
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The inspection of systems or systems components for tamper resistance and detection addresses physical and logical tampering and is applied to systems and system components removed from organization-controlled areas. Indications of a need for inspection include changes in packaging, specifications, factory location, or entity in which the part is purchased, and when individuals return from travel to high-risk locations.
  GUIDANCE
  tag nist: ['SR-10']
  tag control: 'SR-10'
  tag objective: 'SR-10'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sr_10: true
  tag odp: %w{sr_10_odp_01 sr_10_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SR-10' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
