control 'SR-03(03)' do
  impact 0.5
  title "the controls included in the contracts of prime contractors are also included in the contracts of subcontractors."
  desc <<~DESC
    Ensure that the controls included in the contracts of prime contractors are also included in the contracts of subcontractors.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the controls included in the contracts of prime contractors are also included in the contracts of subcontractors.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management plan; system and services acquisition policy; procedures addressing supply chain protection; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; inter-organizational agreements and procedures; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for establishing inter-organizational agreements and procedures with supply chain entities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    To manage supply chain risk effectively and holistically, it is important that organizations ensure that supply chain risk management controls are included at all tiers in the supply chain. This includes ensuring that Tier 1 (prime) contractors have implemented processes to facilitate the "flow down" of supply chain risk management controls to sub-tier contractors. The controls subject to flow down are identified in [SR-3b](#sr-3_smt.b).
  GUIDANCE
  tag nist: ['SR-3 (3)']
  tag control: 'SR-3 (3)'
  tag objective: 'SR-03(03)'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{}
  tag control_sr_3_3: true

  describe 'NIST SP 800-53A Rev 5 objective SR-03(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
