control 'CP-8' do
  impact 0.5
  title 'Telecommunications Services'
  desc <<~DESC
    Establish alternate telecommunications services, including necessary agreements to permit the resumption of #{input('cp_08_odp_01')} for essential mission and business functions within #{input('cp_08_odp_02')} when the primary telecommunications capabilities are unavailable at either the primary or alternate processing or storage sites.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-08 alternate telecommunications services, including necessary agreements to permit the resumption of #{input('cp_08_odp_01')} , are established for essential mission and business functions within #{input('cp_08_odp_02')} when the primary telecommunications capabilities are unavailable at either the primary or alternate processing or storage sites.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternate telecommunications services; contingency plan; primary and alternate telecommunications service agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan telecommunications responsibilities; organizational personnel with system recovery responsibilities; organizational personnel with knowledge of requirements for mission and business functions; organizational personnel with information security responsibilities; organizational personnel with responsibility for acquisitions/contractual agreements
      TEST: Mechanisms supporting telecommunications
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Telecommunications services (for data and voice) for primary and alternate processing and storage sites are in scope for [CP-8](#cp-8) . Alternate telecommunications services reflect the continuity requirements in contingency plans to maintain essential mission and business functions despite the loss of primary telecommunications services. Organizations may specify different time periods for primary or alternate sites. Alternate telecommunications services include additional organizational or commercial ground-based circuits or lines, network-based approaches to telecommunications, or the use of satellites. Organizations consider factors such as availability, quality of service, and access when entering into alternate telecommunications agreements.
  GUIDANCE
  tag nist: ['CP-8']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{cp_08_odp_01 cp_08_odp_02}

  describe 'NIST SP 800-53 Rev 5 control CP-8' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
