control 'PE-02(01)' do
  impact 0.5
  title "physical access to the facility where the system resides is authorized based on position or role."
  desc <<~DESC
    Authorize physical access to the facility where the system resides based on position or role.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      physical access to the facility where the system resides is authorized based on position or role.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access authorizations; physical access control logs or records; list of positions/roles and corresponding physical access authorizations; system entry and exit points; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access authorization responsibilities; organizational personnel with physical access to system facility; organizational personnel with information security responsibilities
      TEST: Organizational processes for physical access authorizations; mechanisms supporting and/or implementing physical access authorizations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Role-based facility access includes access by authorized permanent and regular/routine maintenance personnel, duty officers, and emergency medical staff.
  GUIDANCE
  tag nist: ['PE-2 (1)']
  tag control: 'PE-2 (1)'
  tag objective: 'PE-02(01)'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_2_1: true

  describe 'NIST SP 800-53A Rev 5 objective PE-02(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
