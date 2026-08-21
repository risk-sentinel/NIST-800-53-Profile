control 'PE-11(02)(c)' do
  impact 0.5
  title "the alternate power supply provided for the system is capable of maintaining #{input('pe_11_02_odp_02')} in the event of an extended loss of the primary power source."
  desc <<~DESC
    Provide an alternate power supply for the system that is activated #{input('pe_11_02_odp_01')} and that is:
      (a) Self-contained;
      (b) Not reliant on external power generation; and
      (c) Capable of maintaining #{input('pe_11_02_odp_02')} in the event of an extended loss of the primary power source.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the alternate power supply provided for the system is capable of maintaining #{input('pe_11_02_odp_02')} in the event of an extended loss of the primary power source.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing emergency power; alternate power supply; alternate power supply documentation; alternate power supply test records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for emergency power and/or planning; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing an alternate power supply; the alternate power supply
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The provision of a long-term, self-contained power supply can be satisfied by using one or more generators with sufficient capacity to meet the needs of the organization.
  GUIDANCE
  tag nist: ['PE-11 (2)']
  tag control: 'PE-11 (2)'
  tag objective: 'PE-11(02)(c)'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_11_2: true
  tag odp: %w{pe_11_02_odp_01 pe_11_02_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PE-11(02)(c)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
