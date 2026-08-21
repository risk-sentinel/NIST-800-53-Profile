control 'CM-08(03)(a)[02]' do
  impact 0.5
  title "the presence of unauthorized software within the system is detected using #{input('cm_08_03_odp_02')} #{input('cm_08_03_odp_04')};"
  desc <<~DESC
    (a) Detect the presence of unauthorized hardware, software, and firmware components within the system using #{input('cm_8_3_prm_1')} #{input('cm_08_03_odp_04')} ; and
    (b) Take the following actions when unauthorized components are detected: #{input('cm_08_03_odp_05')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the presence of unauthorized software within the system is detected using #{input('cm_08_03_odp_02')} #{input('cm_08_03_odp_04')};

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system component inventory; configuration management plan; system design documentation; system security plan; system component inventory; change control records; alerts/notifications of unauthorized components within the system; system monitoring records; system maintenance records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with component inventory management responsibilities; organizational personnel with responsibilities for managing the automated mechanisms implementing unauthorized system component detection; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Organizational processes for detection of unauthorized system components; organizational processes for taking action when unauthorized system components are detected; automated mechanisms supporting and/or implementing the detection of unauthorized system components; automated mechanisms supporting and/or implementing actions taken when unauthorized system components are detected
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated unauthorized component detection is applied in addition to the monitoring for unauthorized remote connections and mobile devices. Monitoring for unauthorized system components may be accomplished on an ongoing basis or by the periodic scanning of systems for that purpose. Automated mechanisms may also be used to prevent the connection of unauthorized components (see [CM-7(9)](#cm-7.9) ). Automated mechanisms can be implemented in systems or in separate system components. When acquiring and implementing automated mechanisms, organizations consider whether such mechanisms depend on the ability of the system component to support an agent or supplicant in order to be detected since some types of components do not have or cannot support agents (e.g., IoT devices, sensors). Isolation can be achieved , for example, by placing unauthorized system components in separate domains or subnets or quarantining such components. This type of component isolation is commonly referred to as "sandboxing."
  GUIDANCE
  tag nist: ['CM-8 (3)']
  tag control: 'CM-8 (3)'
  tag objective: 'CM-08(03)(a)[02]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_8_3: true
  tag odp: %w{cm_08_03_odp_02 cm_08_03_odp_04 cm_08_03_odp_05 cm_8_3_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective CM-08(03)(a)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
