control 'CM-8 (4)' do
  impact 0.5
  title 'Accountability Information'
  desc <<~DESC
    Include in the system component inventory information, a means for identifying by #{input('cm_08_04_odp')} , individuals responsible and accountable for administering those components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-08(04) individuals responsible and accountable for administering system components are identified by #{input('cm_08_04_odp')} in the system component inventory.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system component inventory; configuration management plan; system security plan; system component inventory; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with component inventory management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing the system component inventory; mechanisms supporting and/or implementing the system component inventory
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Identifying individuals who are responsible and accountable for administering system components ensures that the assigned components are properly administered and that organizations can contact those individuals if some action is required (e.g., when the component is determined to be the source of a breach, needs to be recalled or replaced, or needs to be relocated).
  GUIDANCE
  tag nist: ['CM-8 (4)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{cm_08_04_odp}

  describe 'NIST SP 800-53 Rev 5 control CM-8 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
