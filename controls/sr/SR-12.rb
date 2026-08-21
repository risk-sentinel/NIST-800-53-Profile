control 'SR-12' do
  impact 0.5
  title "#{input('sr_12_odp_01')} are disposed of using #{input('sr_12_odp_02')}."
  desc <<~DESC
    Dispose of #{input('sr_12_odp_01')} using the following techniques and methods: #{input('sr_12_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sr_12_odp_01')} are disposed of using #{input('sr_12_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management plan; disposal procedures addressing supply chain protection; media disposal policy; media protection policy; disposal records for system components; documentation of the system components identified for disposal; documentation of the disposal techniques and methods employed for system components; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system component disposal responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain protection responsibilities
      TEST: Organizational techniques and methods for system component disposal; mechanisms supporting and/or implementing system component disposal
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Data, documentation, tools, or system components can be disposed of at any time during the system development life cycle (not only in the disposal or retirement phase of the life cycle). For example, disposal can occur during research and development, design, prototyping, or operations/maintenance and include methods such as disk cleaning, removal of cryptographic keys, partial reuse of components. Opportunities for compromise during disposal affect physical and logical data, including system documentation in paper-based or digital files; shipping and delivery documentation; memory sticks with software code; or complete routers or servers that include permanent media, which contain sensitive or proprietary information. Additionally, proper disposal of system components helps to prevent such components from entering the gray market.
  GUIDANCE
  tag nist: ['SR-12']
  tag control: 'SR-12'
  tag objective: 'SR-12'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sr_12: true
  tag odp: %w{sr_12_odp_01 sr_12_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SR-12' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
