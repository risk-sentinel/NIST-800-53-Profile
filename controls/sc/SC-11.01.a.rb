control 'SC-11(01)(a)' do
  impact 0.5
  title "a trusted communication path that is irrefutably distinguishable from other communication paths is provided;"
  desc <<~DESC
    (a) Provide a trusted communications path that is irrefutably distinguishable from other communications paths; and
    (b) Initiate the trusted communications path for communications between the #{input('sc_11_01_odp')} of the system and the user.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a trusted communication path that is irrefutably distinguishable from other communication paths is provided;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing trusted communication paths; security plan; system design documentation; system configuration settings and associated documentation; assessment results from independent, testing organizations; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Mechanisms supporting and/or implementing trusted communication paths
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An irrefutable communications path permits the system to initiate a trusted path, which necessitates that the user can unmistakably recognize the source of the communication as a trusted system component. For example, the trusted path may appear in an area of the display that other applications cannot access or be based on the presence of an identifier that cannot be spoofed.
  GUIDANCE
  tag nist: ['SC-11 (1)']
  tag control: 'SC-11 (1)'
  tag objective: 'SC-11(01)(a)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_11_1: true
  tag odp: %w{sc_11_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-11(01)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
