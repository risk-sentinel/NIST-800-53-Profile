control 'SC-08(04)' do
  impact 0.5
  title "cryptographic mechanisms are implemented to conceal or randomize communication patterns unless otherwise protected by #{input('sc_08_04_odp')}."
  desc <<~DESC
    Implement cryptographic mechanisms to conceal or randomize communication patterns unless otherwise protected by #{input('sc_08_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      cryptographic mechanisms are implemented to conceal or randomize communication patterns unless otherwise protected by #{input('sc_08_04_odp')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing transmission confidentiality and integrity; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Cryptographic mechanisms supporting and/or implementing concealment or randomization of communication patterns; mechanisms supporting and/or implementing alternative physical safeguards; organizational processes for defining and implementing alternative physical safeguards
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Concealing or randomizing communication patterns addresses protection from unauthorized disclosure of information. Communication patterns include frequency, periods, predictability, and amount. Changes to communications patterns can reveal information with intelligence value, especially when combined with other available information related to the mission and business functions of the organization. Concealing or randomizing communications prevents the derivation of intelligence based on communications patterns and applies to both internal and external networks or links that may be visible to individuals who are not authorized users. Encrypting the links and transmitting in continuous, fixed, or random patterns prevents the derivation of intelligence from the system communications patterns. Alternative physical controls include protected distribution systems.
  GUIDANCE
  tag nist: ['SC-8 (4)']
  tag control: 'SC-8 (4)'
  tag objective: 'SC-08(04)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_8_4: true
  tag odp: %w{sc_08_04_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-08(04)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
