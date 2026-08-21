control 'SR-05(01)' do
  impact 0.5
  title "#{input('sr_05_01_odp_01')} are employed to ensure an adequate supply of #{input('sr_05_01_odp_02')}."
  desc <<~DESC
    Employ the following controls to ensure an adequate supply of #{input('sr_05_01_odp_02')}: #{input('sr_05_01_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sr_05_01_odp_01')} are employed to ensure an adequate supply of #{input('sr_05_01_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management strategy; supply chain risk management plan; contingency planning documents; inventory of critical systems and system components; determination of adequate supply; system and services acquisition policy; procedures addressing supply chain protection; procedures addressing the integration of information security requirements into the acquisition process; procedures addressing the integration of acquisition strategies, contract tools, and procurement methods into the acquisition process; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for systems or services; purchase orders/requisitions for the system, system component, or system service from suppliers; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for defining and employing tailored acquisition strategies, contract tools, and procurement methods; mechanisms supporting and/or implementing the definition and employment of tailored acquisition strategies, contract tools, and procurement methods
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Adversaries can attempt to impede organizational operations by disrupting the supply of critical system components or corrupting supplier operations. Organizations may track systems and component mean time to failure to mitigate the loss of temporary or permanent system function. Controls to ensure that adequate supplies of critical system components include the use of multiple suppliers throughout the supply chain for the identified critical components, stockpiling spare components to ensure operation during mission-critical times, and the identification of functionally identical or similar components that may be used, if necessary.
  GUIDANCE
  tag nist: ['SR-5 (1)']
  tag control: 'SR-5 (1)'
  tag objective: 'SR-05(01)'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{}
  tag control_sr_5_1: true
  tag odp: %w{sr_05_01_odp_01 sr_05_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SR-05(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
