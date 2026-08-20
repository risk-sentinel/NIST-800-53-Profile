control 'SR-3 (2)' do
  impact 0.5
  title 'Limitation of Harm'
  desc <<~DESC
    Employ the following controls to limit harm from potential adversaries identifying and targeting the organizational supply chain: #{input('sr_03_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SR-03(02) #{input('sr_03_02_odp')} are employed to limit harm from potential adversaries identifying and targeting the organizational supply chain.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management plan; system and services acquisition policy; configuration management policy; procedures addressing supply chain protection; procedures addressing the integration of information security requirements into the acquisition process; procedures addressing the baseline configuration of the system; configuration management plan; system design documentation; system architecture and associated configuration documentation; solicitation documentation; acquisition documentation; acquisition contracts for the system, system component, or system service; threat assessments; vulnerability assessments; list of security safeguards to be taken to protect the organizational supply chain against potential supply chain threats; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for defining and employing safeguards to limit harm from adversaries of the organizational supply chain; mechanisms supporting and/or implementing the definition and employment of safeguards to protect the organizational supply chain
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Controls that can be implemented to reduce the probability of adversaries successfully identifying and targeting the supply chain include avoiding the purchase of custom or non-standardized configurations, employing approved vendor lists with standing reputations in industry, following pre-agreed maintenance schedules and update and patch delivery mechanisms, maintaining a contingency plan in case of a supply chain event, using procurement carve-outs that provide exclusions to commitments or obligations, using diverse delivery routes, and minimizing the time between purchase decisions and delivery.
  GUIDANCE
  tag nist: ['SR-3 (2)']
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{}
  tag odp: %w{sr_03_02_odp}

  describe 'NIST SP 800-53 Rev 5 control SR-3 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
