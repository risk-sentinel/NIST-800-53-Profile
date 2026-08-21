control 'SR-06' do
  impact 0.5
  title "the supply chain-related risks associated with suppliers or contractors and the systems, system components, or system services they provide are assessed and reviewed #{input('sr_06_odp')}."
  desc <<~DESC
    Assess and review the supply chain-related risks associated with suppliers or contractors and the system, system component, or system service they provide #{input('sr_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the supply chain-related risks associated with suppliers or contractors and the systems, system components, or system services they provide are assessed and reviewed #{input('sr_06_odp')}.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management strategy; supply chain risk management plan; system and services acquisition policy; procedures addressing supply chain protection; procedures addressing the integration of information security requirements into the acquisition process; records of supplier due diligence reviews; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain protection responsibilities
      TEST: Organizational processes for conducting supplier reviews; mechanisms supporting and/or implementing supplier reviews
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An assessment and review of supplier risk includes security and supply chain risk management processes, foreign ownership, control or influence (FOCI), and the ability of the supplier to effectively assess subordinate second-tier and third-tier suppliers and contractors. The reviews may be conducted by the organization or by an independent third party. The reviews consider documented processes, documented controls, all-source intelligence, and publicly available information related to the supplier or contractor. Organizations can use open-source information to monitor for indications of stolen information, poor development and quality control practices, information spillage, or counterfeits. In some cases, it may be appropriate or required to share assessment and review results with other organizations in accordance with any applicable rules, policies, or inter-organizational agreements or contracts.
  GUIDANCE
  tag nist: ['SR-6']
  tag control: 'SR-6'
  tag objective: 'SR-06'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sr_6: true
  tag odp: %w{sr_06_odp}

  describe 'NIST SP 800-53A Rev 5 objective SR-06' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
