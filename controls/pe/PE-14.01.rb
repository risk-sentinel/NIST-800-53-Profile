control 'PE-14(01)' do
  impact 0.5
  title "#{input('pe_14_01_odp')} are employed in the facility to prevent fluctuations that are potentially harmful to the system."
  desc <<~DESC
    Employ the following automatic environmental controls in the facility to prevent fluctuations potentially harmful to the system: #{input('pe_14_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('pe_14_01_odp')} are employed in the facility to prevent fluctuations that are potentially harmful to the system.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing temperature and humidity controls; facility housing the system; automated mechanisms for temperature and humidity; temperature and humidity controls; temperature and humidity documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for system environmental controls; organizational personnel with information security responsibilities
      TEST: Automated mechanisms supporting and/or implementing temperature and humidity levels
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The implementation of automatic environmental controls provides an immediate response to environmental conditions that can damage, degrade, or destroy organizational systems or systems components.
  GUIDANCE
  tag nist: ['PE-14 (1)']
  tag control: 'PE-14 (1)'
  tag objective: 'PE-14(01)'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_14_1: true
  tag odp: %w{pe_14_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective PE-14(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
