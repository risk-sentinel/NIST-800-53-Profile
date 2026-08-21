control 'PE-08c.' do
  impact 0.5
  title "visitor access records anomalies are reported to #{input('pe_08_odp_03')}."
  desc <<~DESC
    a. Maintain visitor access records to the facility where the system resides for #{input('pe_08_odp_01')};
    b. Review visitor access records #{input('pe_08_odp_02')} ; and
    c. Report anomalies in visitor access records to #{input('pe_08_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      visitor access records anomalies are reported to #{input('pe_08_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing visitor access records; visitor access control logs or records; visitor access record or log reviews; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with visitor access record responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for maintaining and reviewing visitor access records; mechanisms supporting and/or implementing the maintenance and review of visitor access records
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Visitor access records include the names and organizations of individuals visiting, visitor signatures, forms of identification, dates of access, entry and departure times, purpose of visits, and the names and organizations of individuals visited. Access record reviews determine if access authorizations are current and are still required to support organizational mission and business functions. Access records are not required for publicly accessible areas.
  GUIDANCE
  tag nist: ['PE-8']
  tag control: 'PE-8'
  tag objective: 'PE-08c.'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_8: true
  tag odp: %w{pe_08_odp_01 pe_08_odp_02 pe_08_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective PE-08c.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
