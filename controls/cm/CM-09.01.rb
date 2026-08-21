control 'CM-09(01)' do
  impact 0.5
  title "the responsibility for developing the configuration management process is assigned to organizational personnel who are not directly involved in system development."
  desc <<~DESC
    Assign responsibility for developing the configuration management process to organizational personnel that are not directly involved in system development.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the responsibility for developing the configuration management process is assigned to organizational personnel who are not directly involved in system development.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing responsibilities for configuration management process development; configuration management plan; system security plan; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for configuration management process development; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In the absence of dedicated configuration management teams assigned within organizations, system developers may be tasked with developing configuration management processes using personnel who are not directly involved in system development or system integration. This separation of duties ensures that organizations establish and maintain a sufficient degree of independence between the system development and integration processes and configuration management processes to facilitate quality control and more effective oversight.
  GUIDANCE
  tag nist: ['CM-9 (1)']
  tag control: 'CM-9 (1)'
  tag objective: 'CM-09(01)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_9_1: true

  describe 'NIST SP 800-53A Rev 5 objective CM-09(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
