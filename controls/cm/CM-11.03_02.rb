control 'CM-11(03)[02]' do
  impact 0.5
  title "compliance with software installation policies is monitored using #{input('cm_11_03_odp_02')}."
  desc <<~DESC
    Enforce and monitor compliance with software installation policies using #{input('cm_11_3_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      compliance with software installation policies is monitored using #{input('cm_11_03_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing user-installed software; configuration management plan; system security plan; system design documentation; system configuration settings and associated documentation; list of rules governing user installed software; system monitoring records; system audit records; continuous monitoring strategy; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for governing user-installed software; organizational personnel operating, using, and/or maintaining the system; organizational personnel monitoring compliance with user-installed software policy; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes governing user-installed software on the system; automated mechanisms enforcing policies on installation of software by users; automated mechanisms monitoring policy compliance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations enforce and monitor compliance with software installation policies using automated mechanisms to more quickly detect and respond to unauthorized software installation which can be an indicator of an internal or external hostile attack.
  GUIDANCE
  tag nist: ['CM-11 (3)']
  tag control: 'CM-11 (3)'
  tag objective: 'CM-11(03)[02]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_11_3: true
  tag odp: %w{cm_11_03_odp_02 cm_11_3_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective CM-11(03)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
