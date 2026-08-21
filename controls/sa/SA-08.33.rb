control 'SA-08(33)' do
  impact 0.5
  title "the privacy principle of minimization is implemented using #{input('sa_08_33_odp')}."
  desc <<~DESC
    Implement the privacy principle of minimization using #{input('sa_08_33_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the privacy principle of minimization is implemented using #{input('sa_08_33_odp')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; personally identifiable information processing policy; procedures addressing the minimization of personally identifiable information in system design; system design documentation; system configuration settings and associated documentation; change control records; information security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers
      TEST: Organizational processes for applying the privacy design principle of minimization in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of sufficient documentation in system specification, design, development, implementation, and modification; mechanisms that enforce security and privacy policy; organizational processes for managing change configuration; mechanisms supporting configuration control
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of minimization states that organizations should only process personally identifiable information that is directly relevant and necessary to accomplish an authorized purpose and should only maintain personally identifiable information for as long as is necessary to accomplish the purpose. Organizations have processes in place, consistent with applicable laws and policies, to implement the principle of minimization.
  GUIDANCE
  tag nist: ['SA-8 (33)']
  tag control: 'SA-8 (33)'
  tag objective: 'SA-08(33)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_sa_8_33: true
  tag odp: %w{sa_08_33_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(33)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
