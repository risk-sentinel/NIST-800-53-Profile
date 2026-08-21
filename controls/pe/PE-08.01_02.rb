control 'PE-08(01)[02]' do
  impact 0.5
  title "visitor access records are reviewed using #{input('pe_08_01_odp_02')}."
  desc <<~DESC
    Maintain and review visitor access records using #{input('pe_8_1_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      visitor access records are reviewed using #{input('pe_08_01_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing visitor access records; automated mechanisms supporting management of visitor access records; visitor access control logs or records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with visitor access record responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for maintaining and reviewing visitor access records; automated mechanisms supporting and/or implementing the maintenance and review of visitor access records
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Visitor access records may be stored and maintained in a database management system that is accessible by organizational personnel. Automated access to such records facilitates record reviews on a regular basis to determine if access authorizations are current and still required to support organizational mission and business functions.
  GUIDANCE
  tag nist: ['PE-8 (1)']
  tag control: 'PE-8 (1)'
  tag objective: 'PE-08(01)[02]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_pe_8_1: true
  tag odp: %w{pe_08_01_odp_02 pe_8_1_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective PE-08(01)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
