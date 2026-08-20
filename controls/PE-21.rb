control 'PE-21' do
  impact 0.5
  title 'Electromagnetic Pulse Protection'
  desc <<~DESC
    Employ #{input('pe_21_odp_01')} against electromagnetic pulse damage for #{input('pe_21_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-21 #{input('pe_21_odp_01')} are employed against electromagnetic pulse damage for #{input('pe_21_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing protective measures to mitigate EMP risk to systems and components; documentation detailing protective measures to mitigate EMP risk; list of locations where protective measures to mitigate EMP risk are implemented; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for physical and environmental protection; system developers/integrators; organizational personnel with information security responsibilities
      TEST: Mechanisms for mitigating EMP risk
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An electromagnetic pulse (EMP) is a short burst of electromagnetic energy that is spread over a range of frequencies. Such energy bursts may be natural or man-made. EMP interference may be disruptive or damaging to electronic equipment. Protective measures used to mitigate EMP risk include shielding, surge suppressors, ferro-resonant transformers, and earth grounding. EMP protection may be especially significant for systems and applications that are part of the U.S. critical infrastructure.
  GUIDANCE
  tag nist: ['PE-21']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag odp: %w{pe_21_odp_01 pe_21_odp_02}

  describe 'NIST SP 800-53 Rev 5 control PE-21' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
