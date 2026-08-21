control 'PE-02(02)' do
  impact 0.5
  title "two forms of identification are required from #{input('pe_02_02_odp')} for visitor access to the facility where the system resides."
  desc <<~DESC
    Require two forms of identification from the following forms of identification for visitor access to the facility where the system resides: #{input('pe_02_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      two forms of identification are required from #{input('pe_02_02_odp')} for visitor access to the facility where the system resides.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access authorizations; list of acceptable forms of identification for visitor access to the facility where the system resides; access authorization forms; access credentials; physical access control logs or records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access authorization responsibilities; organizational personnel with physical access to the system facility; organizational personnel with information security responsibilities
      TEST: Organizational processes for physical access authorizations; mechanisms supporting and/or implementing physical access authorizations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Acceptable forms of identification include passports, REAL ID-compliant drivers’ licenses, and Personal Identity Verification (PIV) cards. For gaining access to facilities using automated mechanisms, organizations may use PIV cards, key cards, PINs, and biometrics.
  GUIDANCE
  tag nist: ['PE-2 (2)']
  tag control: 'PE-2 (2)'
  tag objective: 'PE-02(02)'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_2_2: true
  tag odp: %w{pe_02_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective PE-02(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
