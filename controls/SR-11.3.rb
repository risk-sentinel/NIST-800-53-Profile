control 'SR-11 (3)' do
  impact 0.5
  title 'Anti-counterfeit Scanning'
  desc <<~DESC
    Scan for counterfeit system components #{input('sr_11_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SR-11(03) scanning for counterfeit system components is conducted #{input('sr_11_03_odp')}.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management policy and procedures; supply chain risk management plan; anti-counterfeit policy and procedures; system design documentation; system configuration settings and associated documentation; scanning tools and associated documentation; scanning results; procedures addressing supply chain protection; acquisition documentation; inter-organizational agreements and procedures; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and services acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with supply chain risk management responsibilities; organizational personnel with responsibilities for anti-counterfeit policies and procedures; organizational personnel with responsibility for anti-counterfeit scanning
      TEST: Organizational processes for scanning for counterfeit system components; mechanisms supporting and/or implementing anti-counterfeit scanning
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The type of component determines the type of scanning to be conducted (e.g., web application scanning if the component is a web application).
  GUIDANCE
  tag nist: ['SR-11 (3)']
  tag rev: 'Rev_5'
  tag family: 'Supply Chain Risk Management'
  tag baseline: %w{}
  tag odp: %w{sr_11_03_odp}

  describe 'NIST SP 800-53 Rev 5 control SR-11 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
