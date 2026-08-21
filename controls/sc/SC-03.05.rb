control 'SC-03(05)' do
  impact 0.5
  title "security functions are implemented as a layered structure, minimizing interactions between layers of the design and avoiding any dependence by lower layers on the functionality or correctness of higher layers."
  desc <<~DESC
    Implement security functions as a layered structure minimizing interactions between layers of the design and avoiding any dependence by lower layers on the functionality or correctness of higher layers.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      security functions are implemented as a layered structure, minimizing interactions between layers of the design and avoiding any dependence by lower layers on the functionality or correctness of higher layers.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing security function isolation; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Organizational processes for implementing security functions as a layered structure that minimizes interactions between layers and avoids dependence by lower layers on functionality/correctness of higher layers; mechanisms supporting and/or implementing security functions as a layered structure
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The implementation of layered structures with minimized interactions among security functions and non-looping layers (i.e., lower-layer functions do not depend on higher-layer functions) enables the isolation of security functions and the management of complexity.
  GUIDANCE
  tag nist: ['SC-3 (5)']
  tag control: 'SC-3 (5)'
  tag objective: 'SC-03(05)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_3_5: true

  describe 'NIST SP 800-53A Rev 5 objective SC-03(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
