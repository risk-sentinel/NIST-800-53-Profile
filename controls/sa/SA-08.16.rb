control 'SA-08(16)' do
  impact 0.5
  title "#{input('sa_08_16_odp')} implement the security design principle of self-reliant trustworthiness."
  desc <<~DESC
    Implement the security design principle of self-reliant trustworthiness in #{input('sa_08_16_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_16_odp')} implement the security design principle of self-reliant trustworthiness.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of self-reliant trustworthiness used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of self-reliant trustworthiness in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of self-reliant trustworthiness in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of self-reliant trustworthiness states that systems minimize their reliance on other systems for their own trustworthiness. A system is trustworthy by default, and any connection to an external entity is used to supplement its function. If a system were required to maintain a connection with another external entity in order to maintain its trustworthiness, then that system would be vulnerable to malicious and non-malicious threats that could result in the loss or degradation of that connection. The benefit of the principle of self-reliant trustworthiness is that the isolation of a system will make it less vulnerable to attack. A corollary to this principle relates to the ability of the system (or system component) to operate in isolation and then resynchronize with other components when it is rejoined with them.
  GUIDANCE
  tag nist: ['SA-8 (16)']
  tag control: 'SA-8 (16)'
  tag objective: 'SA-08(16)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_16: true
  tag odp: %w{sa_08_16_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(16)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
