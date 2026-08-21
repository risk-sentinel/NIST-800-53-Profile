control 'CP-10(04)' do
  impact 0.5
  title "the capability to restore system components within #{input('cp_10_04_odp')} from configuration-controlled and integrity-protected information representing a known, operational state for the components is provided."
  desc <<~DESC
    Provide the capability to restore system components within #{input('cp_10_04_odp')} from configuration-controlled and integrity-protected information representing a known, operational state for the components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the capability to restore system components within #{input('cp_10_04_odp')} from configuration-controlled and integrity-protected information representing a known, operational state for the components is provided.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system recovery and reconstitution; contingency plan; system design documentation; system configuration settings and associated documentation; contingency plan test documentation; contingency plan test results; evidence of system recovery and reconstitution operations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system recovery and reconstitution responsibilities; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing the recovery/reconstitution of system information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Restoration of system components includes reimaging, which restores the components to known, operational states.
  GUIDANCE
  tag nist: ['CP-10 (4)']
  tag control: 'CP-10 (4)'
  tag objective: 'CP-10(04)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_cp_10_4: true
  tag odp: %w{cp_10_04_odp}

  describe 'NIST SP 800-53A Rev 5 objective CP-10(04)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
