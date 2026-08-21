control 'CM-2 (7)' do
  impact 0.5
  title 'Configure Systems and Components for High-risk Areas'
  desc <<~DESC
    (a) Issue #{input('cm_02_07_odp_01')} with #{input('cm_02_07_odp_02')} to individuals traveling to locations that the organization deems to be of significant risk; and
    (b) Apply the following controls to the systems or components when the individuals return from travel: #{input('cm_02_07_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-02(07)(a) #{input('cm_02_07_odp_01')} with #{input('cm_02_07_odp_02')} are issued to individuals traveling to locations that the organization deems to be of significant risk;
      CM-02(07)(b) #{input('cm_02_07_odp_03')} are applied to the systems or system components when the individuals return from travel.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; configuration management plan; procedures addressing the baseline configuration of the system; procedures addressing system component installations and upgrades; system architecture and configuration documentation; system configuration settings and associated documentation; system component inventory; records of system baseline configuration reviews and updates; system component installations/upgrades and associated records; change control records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing baseline configurations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    When it is known that systems or system components will be in high-risk areas external to the organization, additional controls may be implemented to counter the increased threat in such areas. For example, organizations can take actions for notebook computers used by individuals departing on and returning from travel. Actions include determining the locations that are of concern, defining the required configurations for the components, ensuring that components are configured as intended before travel is initiated, and applying controls to the components after travel is completed. Specially configured notebook computers include computers with sanitized hard drives, limited applications, and more stringent configuration settings. Controls applied to mobile devices upon return from travel include examining the mobile device for signs of physical tampering and purging and reimaging disk drives. Protecting information that resides on mobile devices is addressed in the [MP](#mp) (Media Protection) family.
  GUIDANCE
  tag nist: ['CM-2 (7)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{cm_02_07_odp_01 cm_02_07_odp_02 cm_02_07_odp_03}

  describe 'NIST SP 800-53 Rev 5 control CM-2 (7)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
