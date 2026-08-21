control 'CP-07a.' do
  impact 0.5
  title "an alternate processing site, including necessary agreements to permit the transfer and resumption of #{input('cp_07_odp_01')} for essential mission and business functions, is established within #{input('cp_07_odp_02')} when the primary processing capabilities are unavailable;"
  desc <<~DESC
    a. Establish an alternate processing site, including necessary agreements to permit the transfer and resumption of #{input('cp_07_odp_01')} for essential mission and business functions within #{input('cp_07_odp_02')} when the primary processing capabilities are unavailable;
    b. Make available at the alternate processing site, the equipment and supplies required to transfer and resume operations or put contracts in place to support delivery to the site within the organization-defined time period for transfer and resumption; and
    c. Provide controls at the alternate processing site that are equivalent to those at the primary site.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an alternate processing site, including necessary agreements to permit the transfer and resumption of #{input('cp_07_odp_01')} for essential mission and business functions, is established within #{input('cp_07_odp_02')} when the primary processing capabilities are unavailable;

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternate processing sites; contingency plan; alternate processing site agreements; primary processing site agreements; spare equipment and supplies inventory at alternate processing site; equipment and supply contracts; service-level agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for contingency planning and/or alternate site arrangements; organizational personnel with information security responsibilities
      TEST: Organizational processes for recovery at the alternate site; mechanisms supporting and/or implementing recovery at the alternate processing site
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Alternate processing sites are geographically distinct from primary processing sites and provide processing capability if the primary processing site is not available. The alternate processing capability may be addressed using a physical processing site or other alternatives, such as failover to a cloud-based service provider or other internally or externally provided processing service. Geographically distributed architectures that support contingency requirements may also be considered alternate processing sites. Controls that are covered by alternate processing site agreements include the environmental conditions at alternate sites, access rules, physical and environmental protection requirements, and the coordination for the transfer and assignment of personnel. Requirements are allocated to alternate processing sites that reflect the requirements in contingency plans to maintain essential mission and business functions despite disruption, compromise, or failure in organizational systems.
  GUIDANCE
  tag nist: ['CP-7']
  tag control: 'CP-7'
  tag objective: 'CP-07a.'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_7: true
  tag odp: %w{cp_07_odp_01 cp_07_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective CP-07a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
