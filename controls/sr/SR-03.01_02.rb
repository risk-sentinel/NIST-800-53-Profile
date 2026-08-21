control 'SR-03(01)[02]' do
  impact 0.5
  title "a diverse set of sources is employed for #{input('sr_03_01_odp_02')}."
  desc <<~DESC
    Employ a diverse set of sources for the following system components and services: #{input('sr_3_1_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a diverse set of sources is employed for #{input('sr_03_01_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; system and services acquisition policy; planning policy; procedures addressing supply chain protection; physical inventory of critical systems and system components; inventory of critical suppliers, service providers, developers, and contracts; inventory records of critical system components; list of security safeguards ensuring an adequate supply of critical system components; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain protection responsibilities
      TEST: Organizational processes for defining and employing security safeguards to ensure an adequate supply of critical system components; processes to identify critical suppliers; mechanisms supporting and/or implementing the security safeguards that ensure an adequate supply of critical system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Diversifying the supply of systems, system components, and services can reduce the probability that adversaries will successfully identify and target the supply chain and can reduce the impact of a supply chain event or compromise. Identifying multiple suppliers for replacement components can reduce the probability that the replacement component will become unavailable. Employing a diverse set of developers or logistics service providers can reduce the impact of a natural disaster or other supply chain event. Organizations consider designing the system to include diverse materials and components.
  GUIDANCE
  tag nist: ['SR-3 (1)']
  tag control: 'SR-3 (1)'
  tag objective: 'SR-03(01)[02]'
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{}
  tag control_sr_3_1: true
  tag odp: %w{sr_03_01_odp_02 sr_3_1_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective SR-03(01)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
