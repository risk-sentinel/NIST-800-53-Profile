control 'PE-08(03)' do
  impact 0.5
  title "personally identifiable information contained in visitor access records is limited to #{input('pe_08_03_odp')} identified in the privacy risk assessment."
  desc <<~DESC
    Limit personally identifiable information contained in visitor access records to the following elements identified in the privacy risk assessment: #{input('pe_08_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      personally identifiable information contained in visitor access records is limited to #{input('pe_08_03_odp')} identified in the privacy risk assessment.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; personally identifiable information processing policy; privacy risk assessment documentation; privacy impact assessment; visitor access records; personally identifiable information inventory; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with visitor access records responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for maintaining and reviewing visitor access records
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may have requirements that specify the contents of visitor access records. Limiting personally identifiable information in visitor access records when such information is not needed for operational purposes helps reduce the level of privacy risk created by a system.
  GUIDANCE
  tag nist: ['PE-8 (3)']
  tag control: 'PE-8 (3)'
  tag objective: 'PE-08(03)'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pe_8_3: true
  tag odp: %w{pe_08_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective PE-08(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
