control 'PM-5' do
  impact 0.5
  title 'System Inventory'
  desc <<~DESC
    Develop and update #{input('pm_05_odp')} an inventory of organizational systems.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-05[01] an inventory of organizational systems is developed;
      PM-05[02] the inventory of organizational systems is updated #{input('pm_05_odp')}.

    Assessment methods and objects:
      EXAMINE: Information security program plan; system inventory; procedures addressing system inventory development and maintenance; OMB FISMA reporting guidance; other relevant documents or records
      INTERVIEW: Organizational personnel with information security program planning and plan implementation responsibilities; organizational personnel responsible for developing and maintaining the system inventory; organizational personnel with information security responsibilities
      TEST: Organizational processes for system inventory development and maintenance; mechanisms supporting the system inventory
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    [OMB A-130](#27847491-5ce1-4f6a-a1e4-9e483782f0ef) provides guidance on developing systems inventories and associated reporting requirements. System inventory refers to an organization-wide inventory of systems, not system components as described in [CM-8](#cm-8).
  GUIDANCE
  tag nist: ['PM-5']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}
  tag odp: %w{pm_05_odp}

  describe 'NIST SP 800-53 Rev 5 control PM-5' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
