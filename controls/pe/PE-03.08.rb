control 'PE-03(08)' do
  impact 0.5
  title "access control vestibules are employed at #{input('pe_03_08_odp')}."
  desc <<~DESC
    Employ access control vestibules at #{input('pe_03_08_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      access control vestibules are employed at #{input('pe_03_08_odp')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access control; list of access control vestibules and locations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for vestibules to prevent unauthorized access.
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An access control vestibule is part of a physical access control system that typically provides a space between two sets of interlocking doors. Vestibules are designed to prevent unauthorized individuals from following authorized individuals into facilities with controlled access. This activity, also known as piggybacking or tailgating, results in unauthorized access to the facility. Interlocking door controllers can be used to limit the number of individuals who enter controlled access points and to provide containment areas while authorization for physical access is verified. Interlocking door controllers can be fully automated (i.e., controlling the opening and closing of the doors) or partially automated (i.e., using security guards to control the number of individuals entering the containment area).
  GUIDANCE
  tag nist: ['PE-3 (8)']
  tag control: 'PE-3 (8)'
  tag objective: 'PE-03(08)'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_3_8: true
  tag odp: %w{pe_03_08_odp}

  describe 'NIST SP 800-53A Rev 5 objective PE-03(08)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
