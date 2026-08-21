control 'CP-09(06)[01]' do
  impact 0.5
  title "system backup is conducted by maintaining a redundant secondary system that is not collocated with the primary system;"
  desc <<~DESC
    Conduct system backup by maintaining a redundant secondary system that is not collocated with the primary system and that can be activated without loss of information or disruption to operations.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system backup is conducted by maintaining a redundant secondary system that is not collocated with the primary system;

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system backup; contingency plan; system backup test results; contingency plan test results; contingency plan test documentation; redundant secondary system for system backups; location(s) of redundant secondary backup system(s); system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system backup responsibilities; organizational personnel with information security responsibilities; organizational personnel with responsibility for the redundant secondary system
      TEST: Organizational processes for maintaining redundant secondary systems; mechanisms supporting and/or implementing system backups; mechanisms supporting and/or implementing information transfer to a redundant secondary system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The effect of system backup can be achieved by maintaining a redundant secondary system that mirrors the primary system, including the replication of information. If this type of redundancy is in place and there is sufficient geographic separation between the two systems, the secondary system can also serve as the alternate processing site.
  GUIDANCE
  tag nist: ['CP-9 (6)']
  tag control: 'CP-9 (6)'
  tag objective: 'CP-09(06)[01]'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag control_cp_9_6: true

  describe 'NIST SP 800-53A Rev 5 objective CP-09(06)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
