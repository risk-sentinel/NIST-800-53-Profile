control 'CP-10(06)' do
  impact 0.5
  title "system components used for recovery and reconstitution are protected."
  desc <<~DESC
    Protect system components used for recovery and reconstitution.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system components used for recovery and reconstitution are protected.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system recovery and reconstitution; contingency plan; system design documentation; system configuration settings and associated documentation; logical access credentials; physical access credentials; logical access authorization records; physical access authorization records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system recovery and reconstitution responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for protecting backup and restoration of hardware, firmware, and software; mechanisms supporting and/or implementing protection of backups and restoration of hardware, firmware, and software
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Protection of system recovery and reconstitution components (i.e., hardware, firmware, and software) includes physical and technical controls. Backup and restoration components used for recovery and reconstitution include router tables, compilers, and other system software.
  GUIDANCE
  tag nist: ['CP-10 (6)']
  tag control: 'CP-10 (6)'
  tag objective: 'CP-10(06)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag control_cp_10_6: true

  describe 'NIST SP 800-53A Rev 5 objective CP-10(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
