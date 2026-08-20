control 'IR-4 (9)' do
  impact 0.5
  title 'Dynamic Response Capability'
  desc <<~DESC
    Employ #{input('ir_04_09_odp')} to respond to incidents.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-04(09) #{input('ir_04_09_odp')} are employed to respond to incidents.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident handling; automated mechanisms supporting dynamic response capabilities; system design documentation; system configuration settings and associated documentation; incident response plan; system security plan; audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for dynamic response capability; automated mechanisms supporting and/or implementing the dynamic response capability for the organization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The dynamic response capability addresses the timely deployment of new or replacement organizational capabilities in response to incidents. This includes capabilities implemented at the mission and business process level and at the system level.
  GUIDANCE
  tag nist: ['IR-4 (9)']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag odp: %w{ir_04_09_odp}

  describe 'NIST SP 800-53 Rev 5 control IR-4 (9)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
