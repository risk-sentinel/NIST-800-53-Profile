control 'PE-02b.' do
  impact 0.5
  title "authorization credentials are issued for facility access;"
  desc <<~DESC
    a. Develop, approve, and maintain a list of individuals with authorized access to the facility where the system resides;
    b. Issue authorization credentials for facility access;
    c. Review the access list detailing authorized facility access by individuals #{input('pe_02_odp')} ; and
    d. Remove individuals from the facility access list when access is no longer required.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      authorization credentials are issued for facility access;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access authorizations; authorized personnel access list; authorization credentials; physical access list reviews; physical access termination records and associated documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access authorization responsibilities; organizational personnel with physical access to system facility; organizational personnel with information security responsibilities
      TEST: Organizational processes for physical access authorizations; mechanisms supporting and/or implementing physical access authorizations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Physical access authorizations apply to employees and visitors. Individuals with permanent physical access authorization credentials are not considered visitors. Authorization credentials include ID badges, identification cards, and smart cards. Organizations determine the strength of authorization credentials needed consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Physical access authorizations may not be necessary to access certain areas within facilities that are designated as publicly accessible.
  GUIDANCE
  tag nist: ['PE-2']
  tag control: 'PE-2'
  tag objective: 'PE-02b.'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_2: true
  tag odp: %w{pe_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective PE-02b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
