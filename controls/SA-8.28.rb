control 'SA-8 (28)' do
  impact 0.5
  title 'Acceptable Security'
  desc <<~DESC
    Implement the security design principle of acceptable security in #{input('sa_08_28_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-08(28) #{input('sa_08_28_odp')} implement the security design principle of acceptable security.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing the security design principle of acceptable security used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; personally identifiable information processing policy; privacy notifications provided to users; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers
      TEST: Organizational processes for applying the security design principle of acceptable security in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of acceptable security in system specification, design, development, implementation, and modification; mechanisms that enforce security policies
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of acceptable security requires that the level of privacy and performance that the system provides is consistent with the users’ expectations. The perception of personal privacy may affect user behavior, morale, and effectiveness. Based on the organizational privacy policy and the system design, users should be able to restrict their actions to protect their privacy. When systems fail to provide intuitive interfaces or meet privacy and performance expectations, users may either choose to completely avoid the system or use it in ways that may be inefficient or even insecure.
  GUIDANCE
  tag nist: ['SA-8 (28)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_08_28_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-8 (28)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
