control 'SA-08(32)' do
  impact 0.5
  title "#{input('sa_08_32_odp')} implement the security design principle of sufficient documentation."
  desc <<~DESC
    Implement the security design principle of sufficient documentation in #{input('sa_08_32_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_32_odp')} implement the security design principle of sufficient documentation.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of sufficient documentation used in the specification, design, development, implementation, and modification of the system; system design documentation; system configuration settings and associated documentation; change control records; security and privacy requirements and specifications for the system; system security and privacy documentation; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of sufficient documentation in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of sufficient documentation in system specification, design, development, implementation, and modification; mechanisms that enforce security policies; organizational processes for managing change configuration; mechanisms supporting configuration control
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of sufficient documentation states that organizational personnel with responsibilities to interact with the system are provided with adequate documentation and other information such that the personnel contribute to rather than detract from system security. Despite attempts to comply with principles such as human factored security and acceptable security, systems are inherently complex, and the design intent for the use of security mechanisms and the ramifications of the misuse or misconfiguration of security mechanisms are not always intuitively obvious. Uninformed and insufficiently trained users can introduce vulnerabilities due to errors of omission and commission. The availability of documentation and training can help to ensure a knowledgeable cadre of personnel, all of whom have a critical role in the achievement of principles such as continuous protection. Documentation is written clearly and supported by training that provides security awareness and understanding of security-relevant responsibilities.
  GUIDANCE
  tag nist: ['SA-8 (32)']
  tag control: 'SA-8 (32)'
  tag objective: 'SA-08(32)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_32: true
  tag odp: %w{sa_08_32_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(32)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
