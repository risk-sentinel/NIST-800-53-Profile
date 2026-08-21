control 'PE-03(01)[02]' do
  impact 0.5
  title "physical access controls are enforced for the facility at #{input('pe_03_01_odp')}."
  desc <<~DESC
    Enforce physical access authorizations to the system in addition to the physical access controls for the facility at #{input('pe_03_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      physical access controls are enforced for the facility at #{input('pe_03_01_odp')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access control; physical access control logs or records; physical access control devices; access authorizations; access credentials; system entry and exit points; list of areas within the facility containing concentrations of system components or system components requiring additional physical protection; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access authorization responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for physical access control to the information system/components; mechanisms supporting and/or implementing physical access control for facility areas containing system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Control of physical access to the system provides additional physical security for those areas within facilities where there is a concentration of system components.
  GUIDANCE
  tag nist: ['PE-3 (1)']
  tag control: 'PE-3 (1)'
  tag objective: 'PE-03(01)[02]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_pe_3_1: true
  tag odp: %w{pe_03_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective PE-03(01)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
