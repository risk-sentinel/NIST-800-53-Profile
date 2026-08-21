control 'PE-14(02)[02]' do
  impact 0.5
  title "the environmental control monitoring capability provides an alarm or notification to #{input('pe_14_02_odp')} when changes are potentially harmful to personnel or equipment."
  desc <<~DESC
    Employ environmental control monitoring that provides an alarm or notification of changes potentially harmful to personnel or equipment to #{input('pe_14_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the environmental control monitoring capability provides an alarm or notification to #{input('pe_14_02_odp')} when changes are potentially harmful to personnel or equipment.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing temperature and humidity monitoring; facility housing the system; logs or records of temperature and humidity monitoring; records of changes to temperature and humidity levels that generate alarms or notifications; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for system environmental controls; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing temperature and humidity monitoring
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The alarm or notification may be an audible alarm or a visual message in real time to personnel or roles defined by the organization. Such alarms and notifications can help minimize harm to individuals and damage to organizational assets by facilitating a timely incident response.
  GUIDANCE
  tag nist: ['PE-14 (2)']
  tag control: 'PE-14 (2)'
  tag objective: 'PE-14(02)[02]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_14_2: true
  tag odp: %w{pe_14_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective PE-14(02)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
