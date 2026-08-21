control 'PE-6 (4)' do
  impact 0.5
  title 'Monitoring Physical Access to Systems'
  desc <<~DESC
    Monitor physical access to the system in addition to the physical access monitoring of the facility at #{input('pe_06_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-06(04) physical access to the system is monitored in addition to the physical access monitoring of the facility at #{input('pe_06_04_odp')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access monitoring; physical access control logs or records; physical access control devices; access authorizations; access credentials; list of areas within the facility containing concentrations of system components or system components requiring additional physical access monitoring; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access monitoring responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for monitoring physical access to the system; mechanisms supporting and/or implementing physical access monitoring for facility areas containing system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Monitoring physical access to systems provides additional monitoring for those areas within facilities where there is a concentration of system components, including server rooms, media storage areas, and communications centers. Physical access monitoring can be coordinated with intrusion detection systems and system monitoring capabilities to provide comprehensive and integrated threat coverage for the organization.
  GUIDANCE
  tag nist: ['PE-6 (4)']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{pe_06_04_odp}

  describe 'NIST SP 800-53 Rev 5 control PE-6 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
