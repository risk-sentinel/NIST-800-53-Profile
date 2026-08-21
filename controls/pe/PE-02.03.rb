control 'PE-02(03)' do
  impact 0.5
  title "unescorted access to the facility where the system resides is restricted to personnel with #{input('pe_02_03_odp_01')}."
  desc <<~DESC
    Restrict unescorted access to the facility where the system resides to personnel with #{input('pe_02_03_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      unescorted access to the facility where the system resides is restricted to personnel with #{input('pe_02_03_odp_01')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access authorizations; authorized personnel access list; security clearances; access authorizations; access credentials; physical access control logs or records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access authorization responsibilities; organizational personnel with physical access to the system facility; organizational personnel with information security responsibilities
      TEST: Organizational processes for physical access authorizations; mechanisms supporting and/or implementing physical access authorizations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Individuals without required security clearances, access approvals, or need to know are escorted by individuals with appropriate physical access authorizations to ensure that information is not exposed or otherwise compromised.
  GUIDANCE
  tag nist: ['PE-2 (3)']
  tag control: 'PE-2 (3)'
  tag objective: 'PE-02(03)'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_2_3: true
  tag odp: %w{pe_02_03_odp_01}

  describe 'NIST SP 800-53A Rev 5 objective PE-02(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
