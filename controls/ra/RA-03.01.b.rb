control 'RA-03(01)(b)' do
  impact 0.5
  title "the supply chain risk assessment is updated #{input('ra_03_01_odp_02')} , when there are significant changes to the relevant supply chain, or when changes to the system, environments of operation, or other conditions may necessitate a change in the supply chain."
  desc <<~DESC
    (a) Assess supply chain risks associated with #{input('ra_03_01_odp_01')} ; and
    (b) Update the supply chain risk assessment #{input('ra_03_01_odp_02')} , when there are significant changes to the relevant supply chain, or when changes to the system, environments of operation, or other conditions may necessitate a change in the supply chain.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the supply chain risk assessment is updated #{input('ra_03_01_odp_02')} , when there are significant changes to the relevant supply chain, or when changes to the system, environments of operation, or other conditions may necessitate a change in the supply chain.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy; inventory of critical systems, system components, and system services; risk assessment policy; security planning policy and procedures; procedures addressing organizational assessments of supply chain risk; risk assessment; risk assessment results; risk assessment reviews; risk assessment updates; acquisition policy; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with risk assessment responsibilities; organizational personnel with security responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for risk assessment; mechanisms supporting and/or conducting, documenting, reviewing, disseminating, and updating the supply chain risk assessment
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Supply chain-related events include disruption, use of defective components, insertion of counterfeits, theft, malicious development practices, improper delivery practices, and insertion of malicious code. These events can have a significant impact on the confidentiality, integrity, or availability of a system and its information and, therefore, can also adversely impact organizational operations (including mission, functions, image, or reputation), organizational assets, individuals, other organizations, and the Nation. The supply chain-related events may be unintentional or malicious and can occur at any point during the system life cycle. An analysis of supply chain risk can help an organization identify systems or components for which additional supply chain risk mitigations are required.
  GUIDANCE
  tag nist: ['RA-3 (1)']
  tag control: 'RA-3 (1)'
  tag objective: 'RA-03(01)(b)'
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ra_3_1: true
  tag odp: %w{ra_03_01_odp_01 ra_03_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective RA-03(01)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
