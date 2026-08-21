control 'CP-04(04)[01]' do
  impact 0.5
  title "a full recovery of the system to a known state is included as part of contingency plan testing;"
  desc <<~DESC
    Include a full recovery and reconstitution of the system to a known state as part of contingency plan testing.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a full recovery of the system to a known state is included as part of contingency plan testing;

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system recovery and reconstitution; contingency plan; contingency plan test documentation; contingency plan test results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan testing responsibilities; organizational personnel with system recovery and reconstitution responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for contingency plan testing; mechanisms supporting contingency plan testing; mechanisms supporting recovery and reconstitution of the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Recovery is executing contingency plan activities to restore organizational mission and business functions. Reconstitution takes place following recovery and includes activities for returning systems to fully operational states. Organizations establish a known state for systems that includes system state information for hardware, software programs, and data. Preserving system state information facilitates system restart and return to the operational mode of organizations with less disruption of mission and business processes.
  GUIDANCE
  tag nist: ['CP-4 (4)']
  tag control: 'CP-4 (4)'
  tag objective: 'CP-04(04)[01]'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag control_cp_4_4: true

  describe 'NIST SP 800-53A Rev 5 objective CP-04(04)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
