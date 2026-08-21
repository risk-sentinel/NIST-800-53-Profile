control 'SA-08(06)' do
  impact 0.5
  title "#{input('sa_08_06_odp')} implement the security design principle of minimized sharing."
  desc <<~DESC
    Implement the security design principle of minimized sharing in #{input('sa_08_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_06_odp')} implement the security design principle of minimized sharing.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of minimized sharing used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of minimized sharing in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of minimized sharing in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of minimized sharing states that no computer resource is shared between system components (e.g., subjects, processes, functions) unless it is absolutely necessary to do so. Minimized sharing helps to simplify system design and implementation. In order to protect user-domain resources from arbitrary active entities, no resource is shared unless that sharing has been explicitly requested and granted. The need for resource sharing can be motivated by the design principle of least common mechanism in the case of internal entities or driven by stakeholder requirements. However, internal sharing is carefully designed to avoid performance and covert storage and timing channel problems. Sharing via common mechanism can increase the susceptibility of data and information to unauthorized access, disclosure, use, or modification and can adversely affect the inherent capability provided by the system. To minimize sharing induced by common mechanisms, such mechanisms can be designed to be reentrant or virtualized to preserve separation. Moreover, the use of global data to share information is carefully scrutinized. The lack of encapsulation may obfuscate relationships among the sharing entities.
  GUIDANCE
  tag nist: ['SA-8 (6)']
  tag control: 'SA-8 (6)'
  tag objective: 'SA-08(06)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_6: true
  tag odp: %w{sa_08_06_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
