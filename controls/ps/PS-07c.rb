control 'PS-07c.' do
  impact 0.5
  title "personnel security requirements are documented;"
  desc <<~DESC
    a. Establish personnel security requirements, including security roles and responsibilities for external providers;
    b. Require external providers to comply with personnel security policies and procedures established by the organization;
    c. Document personnel security requirements;
    d. Require external providers to notify #{input('ps_07_odp_01')} of any personnel transfers or terminations of external personnel who possess organizational credentials and/or badges, or who have system privileges within #{input('ps_07_odp_02')} ; and
    e. Monitor provider compliance with personnel security requirements.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      personnel security requirements are documented;

    Assessment methods and objects:
      EXAMINE: Personnel security policy; procedures addressing external personnel security; list of personnel security requirements; acquisition documents; service-level agreements; compliance monitoring process; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; external providers; system/network administrators; organizational personnel with account management responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for managing and monitoring external personnel security; mechanisms supporting and/or implementing the monitoring of provider compliance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    External provider refers to organizations other than the organization operating or acquiring the system. External providers include service bureaus, contractors, and other organizations that provide system development, information technology services, testing or assessment services, outsourced applications, and network/security management. Organizations explicitly include personnel security requirements in acquisition-related documents. External providers may have personnel working at organizational facilities with credentials, badges, or system privileges issued by organizations. Notifications of external personnel changes ensure the appropriate termination of privileges and credentials. Organizations define the transfers and terminations deemed reportable by security-related characteristics that include functions, roles, and the nature of credentials or privileges associated with transferred or terminated individuals.
  GUIDANCE
  tag nist: ['PS-7']
  tag control: 'PS-7'
  tag objective: 'PS-07c.'
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ps_7: true
  tag odp: %w{ps_07_odp_01 ps_07_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PS-07c.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
