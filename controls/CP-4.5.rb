control 'CP-4 (5)' do
  impact 0.5
  title 'Self-challenge'
  desc <<~DESC
    Employ #{input('cp_04_05_odp_01')} to #{input('cp_04_05_odp_02')} to disrupt and adversely affect the system or system component.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-04(05) #{input('cp_04_05_odp_01')} are employed to disrupt and adversely affect the #{input('cp_04_05_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system recovery and reconstitution; contingency plan; contingency plan test documentation; contingency plan test results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan testing responsibilities; organizational personnel with system recovery and reconstitution responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for contingency plan testing; mechanisms supporting contingency plan testing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Often, the best method of assessing system resilience is to disrupt the system in some manner. The mechanisms used by the organization could disrupt system functions or system services in many ways, including terminating or disabling critical system components, changing the configuration of system components, degrading critical functionality (e.g., restricting network bandwidth), or altering privileges. Automated, on-going, and simulated cyber-attacks and service disruptions can reveal unexpected functional dependencies and help the organization determine its ability to ensure resilience in the face of an actual cyber-attack.
  GUIDANCE
  tag nist: ['CP-4 (5)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag odp: %w{cp_04_05_odp_01 cp_04_05_odp_02}

  describe 'NIST SP 800-53 Rev 5 control CP-4 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
