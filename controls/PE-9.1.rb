control 'PE-9 (1)' do
  impact 0.5
  title 'Redundant Cabling'
  desc <<~DESC
    Employ redundant power cabling paths that are physically separated by #{input('pe_09_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-09(01) redundant power cabling paths that are physically separated by #{input('pe_09_01_odp')} are employed.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing power equipment/cabling protection; facilities housing power equipment/cabling; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility to protect power equipment/cabling; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing the protection of power equipment/cabling
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Physically separate and redundant power cables ensure that power continues to flow in the event that one of the cables is cut or otherwise damaged.
  GUIDANCE
  tag nist: ['PE-9 (1)']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag odp: %w{pe_09_01_odp}

  describe 'NIST SP 800-53 Rev 5 control PE-9 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
