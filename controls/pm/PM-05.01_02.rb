control 'PM-05(01)[02]' do
  impact 0.5
  title "an inventory of all systems, applications, and projects that process personally identifiable information is maintained;"
  desc <<~DESC
    Establish, maintain, and update #{input('pm_05_01_odp')} an inventory of all systems, applications, and projects that process personally identifiable information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an inventory of all systems, applications, and projects that process personally identifiable information is maintained;

    Assessment methods and objects:
      EXAMINE: Procedures addressing system inventory development, maintenance, and updates; OMB FISMA reporting guidance; privacy program plan; information security program plan; personally identifiable information processing policy; system inventory; personally identifiable information inventory; data mapping documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with privacy program planning and plan implementation responsibilities; organizational personnel responsible for developing and maintaining the system inventory; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for system inventory development, maintenance, and updates; mechanisms supporting the system inventory
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An inventory of systems, applications, and projects that process personally identifiable information supports the mapping of data actions, providing individuals with privacy notices, maintaining accurate personally identifiable information, and limiting the processing of personally identifiable information when such information is not needed for operational purposes. Organizations may use this inventory to ensure that systems only process the personally identifiable information for authorized purposes and that this processing is still relevant and necessary for the purpose specified therein.
  GUIDANCE
  tag nist: ['PM-5 (1)']
  tag control: 'PM-5 (1)'
  tag objective: 'PM-05(01)[02]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_5_1: true
  tag odp: %w{pm_05_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective PM-05(01)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
