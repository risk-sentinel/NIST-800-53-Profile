control 'CP-13' do
  impact 0.5
  title 'Alternative Security Mechanisms'
  desc <<~DESC
    Employ #{input('cp_13_odp_01')} for satisfying #{input('cp_13_odp_02')} when the primary means of implementing the security function is unavailable or compromised.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-13 #{input('cp_13_odp_01')} are employed for satisfying #{input('cp_13_odp_02')} when the primary means of implementing the security function is unavailable or compromised.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternate security mechanisms; contingency plan; continuity of operations plan; system design documentation; system configuration settings and associated documentation; contingency plan test records; contingency plan test results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system operation responsibilities; organizational personnel with information security responsibilities
      TEST: system capability implementing alternative security mechanisms
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Use of alternative security mechanisms supports system resiliency, contingency planning, and continuity of operations. To ensure mission and business continuity, organizations can implement alternative or supplemental security mechanisms. The mechanisms may be less effective than the primary mechanisms. However, having the capability to readily employ alternative or supplemental mechanisms enhances mission and business continuity that might otherwise be adversely impacted if operations had to be curtailed until the primary means of implementing the functions was restored. Given the cost and level of effort required to provide such alternative capabilities, the alternative or supplemental mechanisms are only applied to critical security capabilities provided by systems, system components, or system services. For example, an organization may issue one-time pads to senior executives, officials, and system administrators if multi-factor tokens—the standard means for achieving secure authentication— are compromised.
  GUIDANCE
  tag nist: ['CP-13']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag odp: %w{cp_13_odp_01 cp_13_odp_02}

  describe 'NIST SP 800-53 Rev 5 control CP-13' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
