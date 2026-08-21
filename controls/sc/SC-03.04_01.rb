control 'SC-03(04)[01]' do
  impact 0.5
  title "security functions are implemented as largely independent modules that maximize internal cohesiveness within modules;"
  desc <<~DESC
    Implement security functions as largely independent modules that maximize internal cohesiveness within modules and minimize coupling between modules.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      security functions are implemented as largely independent modules that maximize internal cohesiveness within modules;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing security function isolation; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Organizational processes for maximizing internal cohesiveness within modules and minimizing coupling between modules; mechanisms supporting and/or implementing security functions as independent modules
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The reduction of inter-module interactions helps to constrain security functions and manage complexity. The concepts of coupling and cohesion are important with respect to modularity in software design. Coupling refers to the dependencies that one module has on other modules. Cohesion refers to the relationship between functions within a module. Best practices in software engineering and systems security engineering rely on layering, minimization, and modular decomposition to reduce and manage complexity. This produces software modules that are highly cohesive and loosely coupled.
  GUIDANCE
  tag nist: ['SC-3 (4)']
  tag control: 'SC-3 (4)'
  tag objective: 'SC-03(04)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_3_4: true

  describe 'NIST SP 800-53A Rev 5 objective SC-03(04)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
