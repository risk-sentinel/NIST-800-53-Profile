control 'PE-9 (2)' do
  impact 0.5
  title 'Automatic Voltage Controls'
  desc <<~DESC
    Employ automatic voltage controls for #{input('pe_09_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-09(02) automatic voltage controls for #{input('pe_09_02_odp')} are employed.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing voltage control; security plan; list of critical system components requiring automatic voltage controls; automatic voltage control mechanisms and associated configurations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for environmental protection of system components; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing automatic voltage controls
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automatic voltage controls can monitor and control voltage. Such controls include voltage regulators, voltage conditioners, and voltage stabilizers.
  GUIDANCE
  tag nist: ['PE-9 (2)']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag odp: %w{pe_09_02_odp}

  describe 'NIST SP 800-53 Rev 5 control PE-9 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
