control 'CP-8 (5)' do
  impact 0.5
  title 'Alternate Telecommunication Service Testing'
  desc <<~DESC
    Test alternate telecommunication services #{input('cp_08_05_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-08(05) alternate telecommunications services are tested #{input('cp_08_05_odp')}.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternate telecommunications services; contingency plan; evidence of testing alternate telecommunications services; alternate telecommunications service agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning, plan implementation, and testing responsibilities; alternate telecommunications service providers; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting testing alternate telecommunications services
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Alternate telecommunications services testing is arranged through contractual agreements with service providers. The testing may occur in parallel with normal operations to ensure that there is no degradation in organizational missions or functions.
  GUIDANCE
  tag nist: ['CP-8 (5)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag odp: %w{cp_08_05_odp}

  describe 'NIST SP 800-53 Rev 5 control CP-8 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
