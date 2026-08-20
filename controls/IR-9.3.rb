control 'IR-9 (3)' do
  impact 0.5
  title 'Post-spill Operations'
  desc <<~DESC
    Implement the following procedures to ensure that organizational personnel impacted by information spills can continue to carry out assigned tasks while contaminated systems are undergoing corrective actions: #{input('ir_09_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-09(03) #{input('ir_09_03_odp')} are implemented to ensure that organizational personnel impacted by information spills can continue to carry out assigned tasks while contaminated systems are undergoing corrective actions.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident response; procedures addressing information spillage; incident response plan; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for post-spill operations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Corrective actions for systems contaminated due to information spillages may be time-consuming. Personnel may not have access to the contaminated systems while corrective actions are being taken, which may potentially affect their ability to conduct organizational business.
  GUIDANCE
  tag nist: ['IR-9 (3)']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag odp: %w{ir_09_03_odp}

  describe 'NIST SP 800-53 Rev 5 control IR-9 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
