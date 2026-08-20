control 'CP-2 (2)' do
  impact 0.5
  title 'Capacity Planning'
  desc <<~DESC
    Conduct capacity planning so that necessary capacity for information processing, telecommunications, and environmental support exists during contingency operations.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-02(02)[01] capacity planning is conducted so that the necessary capacity exists during contingency operations for information processing;
      CP-02(02)[02] capacity planning is conducted so that the necessary capacity exists during contingency operations for telecommunications;
      CP-02(02)[03] capacity planning is conducted so that the necessary capacity exists during contingency operations for environmental support.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency operations for the system; contingency plan; capacity planning documents; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning and plan implementation responsibilities; organizational personnel responsible for capacity planning; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Capacity planning is needed because different threats can result in a reduction of the available processing, telecommunications, and support services intended to support essential mission and business functions. Organizations anticipate degraded operations during contingency operations and factor the degradation into capacity planning. For capacity planning, environmental support refers to any environmental factor for which the organization determines that it needs to provide support in a contingency situation, even if in a degraded state. Such determinations are based on an organizational assessment of risk, system categorization (impact level), and organizational risk tolerance.
  GUIDANCE
  tag nist: ['CP-2 (2)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control CP-2 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
