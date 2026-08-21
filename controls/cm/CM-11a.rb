control 'CM-11a.' do
  impact 0.5
  title "#{input('cm_11_odp_01')} governing the installation of software by users are established;"
  desc <<~DESC
    a. Establish #{input('cm_11_odp_01')} governing the installation of software by users;
    b. Enforce software installation policies through the following methods: #{input('cm_11_odp_02')} ; and
    c. Monitor policy compliance #{input('cm_11_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('cm_11_odp_01')} governing the installation of software by users are established;

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing user-installed software; configuration management plan; system security plan; system design documentation; system configuration settings and associated documentation; list of rules governing user installed software; system monitoring records; system audit records; continuous monitoring strategy; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for governing user-installed software; organizational personnel operating, using, and/or maintaining the system; organizational personnel monitoring compliance with user-installed software policy; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes governing user-installed software on the system; mechanisms enforcing policies and methods for governing the installation of software by users; mechanisms monitoring policy compliance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    If provided the necessary privileges, users can install software in organizational systems. To maintain control over the software installed, organizations identify permitted and prohibited actions regarding software installation. Permitted software installations include updates and security patches to existing software and downloading new applications from organization-approved "app stores." Prohibited software installations include software with unknown or suspect pedigrees or software that organizations consider potentially malicious. Policies selected for governing user-installed software are organization-developed or provided by some external entity. Policy enforcement methods can include procedural methods and automated methods.
  GUIDANCE
  tag nist: ['CM-11']
  tag control: 'CM-11'
  tag objective: 'CM-11a.'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_11: true
  tag odp: %w{cm_11_odp_01 cm_11_odp_02 cm_11_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective CM-11a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
