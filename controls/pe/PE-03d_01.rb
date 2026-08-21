control 'PE-03d.[01]' do
  impact 0.5
  title "visitors are escorted;"
  desc <<~DESC
    a. Enforce physical access authorizations at #{input('pe_03_odp_01')} by:
      1. Verifying individual access authorizations before granting access to the facility; and
      2. Controlling ingress and egress to the facility using #{input('pe_03_odp_02')};
    b. Maintain physical access audit logs for #{input('pe_03_odp_04')};
    c. Control access to areas within the facility designated as publicly accessible by implementing the following controls: #{input('pe_03_odp_05')};
    d. Escort visitors and control visitor activity #{input('pe_03_odp_06')};
    e. Secure keys, combinations, and other physical access devices;
    f. Inventory #{input('pe_03_odp_07')} every #{input('pe_03_odp_08')} ; and
    g. Change combinations and keys #{input('pe_3_prm_9')} and/or when keys are lost, combinations are compromised, or when individuals possessing the keys or combinations are transferred or terminated.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      visitors are escorted;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access control; physical access control logs or records; inventory records of physical access control devices; system entry and exit points; records of key and lock combination changes; storage locations for physical access control devices; physical access control devices; list of security safeguards controlling access to designated publicly accessible areas within facility; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for physical access control; mechanisms supporting and/or implementing physical access control; physical access control devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Physical access control applies to employees and visitors. Individuals with permanent physical access authorizations are not considered visitors. Physical access controls for publicly accessible areas may include physical access control logs/records, guards, or physical access devices and barriers to prevent movement from publicly accessible areas to non-public areas. Organizations determine the types of guards needed, including professional security staff, system users, or administrative staff. Physical access devices include keys, locks, combinations, biometric readers, and card readers. Physical access control systems comply with applicable laws, executive orders, directives, policies, regulations, standards, and guidelines. Organizations have flexibility in the types of audit logs employed. Audit logs can be procedural, automated, or some combination thereof. Physical access points can include facility access points, interior access points to systems that require supplemental access controls, or both. Components of systems may be in areas designated as publicly accessible with organizations controlling access to the components.
  GUIDANCE
  tag nist: ['PE-3']
  tag control: 'PE-3'
  tag objective: 'PE-03d.[01]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_3: true
  tag odp: %w{pe_03_odp_01 pe_03_odp_02 pe_03_odp_04 pe_03_odp_05 pe_03_odp_06 pe_03_odp_07 pe_03_odp_08 pe_3_prm_9}

  describe 'NIST SP 800-53A Rev 5 objective PE-03d.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
