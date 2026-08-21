control 'SA-08(31)' do
  impact 0.5
  title "#{input('sa_08_31_odp')} implement the security design principle of secure system modification."
  desc <<~DESC
    Implement the security design principle of secure system modification in #{input('sa_08_31_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_31_odp')} implement the security design principle of secure system modification.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; configuration management policy and procedures; procedures addressing the security design principle of secure system modification used in the specification, design, development, implementation, and modification of the system; system design documentation; system configuration settings and associated documentation; change control records; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of secure system modification in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of secure system modification in system specification, design, development, implementation, and modification; mechanisms that enforce security policies; organizational processes for managing change configuration; mechanisms supporting configuration control
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of secure system modification states that system modification maintains system security with respect to the security requirements and risk tolerance of stakeholders. Upgrades or modifications to systems can transform secure systems into systems that are not secure. The procedures for system modification ensure that if the system is to maintain its trustworthiness, the same rigor that was applied to its initial development is applied to any system changes. Because modifications can affect the ability of the system to maintain its secure state, a careful security analysis of the modification is needed prior to its implementation and deployment. This principle parallels the principle of secure evolvability.
  GUIDANCE
  tag nist: ['SA-8 (31)']
  tag control: 'SA-8 (31)'
  tag objective: 'SA-08(31)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_31: true
  tag odp: %w{sa_08_31_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(31)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
