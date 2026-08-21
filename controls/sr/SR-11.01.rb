control 'SR-11(01)' do
  impact 0.5
  title "#{input('sr_11_01_odp')} are trained to detect counterfeit system components (including hardware, software, and firmware)."
  desc <<~DESC
    Train #{input('sr_11_01_odp')} to detect counterfeit system components (including hardware, software, and firmware).
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sr_11_01_odp')} are trained to detect counterfeit system components (including hardware, software, and firmware).

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management plan; system and services acquisition policy; anti-counterfeit plan; anti-counterfeit policy and procedures; media disposal policy; media protection policy; incident response policy; training materials addressing counterfeit system components; training records on the detection and prevention of counterfeit components entering the system; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities; organizational personnel with responsibilities for anti-counterfeit policies, procedures, and training
      TEST: Organizational processes for anti-counterfeit training
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['SR-11 (1)']
  tag control: 'SR-11 (1)'
  tag objective: 'SR-11(01)'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sr_11_1: true
  tag odp: %w{sr_11_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective SR-11(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
