control 'CP-07(03)' do
  impact 0.5
  title "alternate processing site agreements that contain priority-of-service provisions in accordance with availability requirements (including recovery time objectives) are developed."
  desc <<~DESC
    Develop alternate processing site agreements that contain priority-of-service provisions in accordance with availability requirements (including recovery time objectives).
  DESC
  desc 'check', <<~CHECK
    Determine if:
      alternate processing site agreements that contain priority-of-service provisions in accordance with availability requirements (including recovery time objectives) are developed.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternate processing sites; contingency plan; alternate processing site agreements; service-level agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan alternate processing site responsibilities; organizational personnel with system recovery responsibilities; organizational personnel with information security responsibilities; organizational personnel with responsibility for acquisitions/contractual agreements
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Priority of service agreements refer to negotiated agreements with service providers that ensure that organizations receive priority treatment consistent with their availability requirements and the availability of information resources for logical alternate processing and/or at the physical alternate processing site. Organizations establish recovery time objectives as part of contingency planning.
  GUIDANCE
  tag nist: ['CP-7 (3)']
  tag control: 'CP-7 (3)'
  tag objective: 'CP-07(03)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_7_3: true

  describe 'NIST SP 800-53A Rev 5 objective CP-07(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
