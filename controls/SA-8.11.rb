control 'SA-8 (11)' do
  impact 0.5
  title 'Inverse Modification Threshold'
  desc <<~DESC
    Implement the security design principle of inverse modification threshold in #{input('sa_08_11_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-08(11) #{input('sa_08_11_odp')} implement the security design principle of inverse modification threshold.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of inverse modification threshold used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of inverse modification threshold in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of inverse modification threshold in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of inverse modification threshold builds on the principle of trusted components and the principle of hierarchical trust and states that the degree of protection provided to a component is commensurate with its trustworthiness. As the trust placed in a component increases, the protection against unauthorized modification of the component also increases to the same degree. Protection from unauthorized modification can come in the form of the component’s own self-protection and innate trustworthiness, or it can come from the protections afforded to the component from other elements or attributes of the security architecture (to include protections in the environment of operation).
  GUIDANCE
  tag nist: ['SA-8 (11)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_08_11_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-8 (11)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
