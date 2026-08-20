control 'SA-8 (18)' do
  impact 0.5
  title 'Trusted Communications Channels'
  desc <<~DESC
    Implement the security design principle of trusted communications channels in #{input('sa_08_18_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-08(18) #{input('sa_08_18_odp')} implement the security design principle of trusted communications channels.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of trusted communications channels used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of trusted communications channels in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of trusted communications channels in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of trusted communication channels states that when composing a system where there is a potential threat to communications between components (i.e., the interconnections between components), each communication channel is trustworthy to a level commensurate with the security dependencies it supports (i.e., how much it is trusted by other components to perform its security functions). Trusted communication channels are achieved by a combination of restricting access to the communication channel (to ensure an acceptable match in the trustworthiness of the endpoints involved in the communication) and employing end-to-end protections for the data transmitted over the communication channel (to protect against interception and modification and to further increase the assurance of proper end-to-end communication).
  GUIDANCE
  tag nist: ['SA-8 (18)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_08_18_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-8 (18)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
