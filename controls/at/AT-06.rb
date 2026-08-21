control 'AT-06' do
  impact 0.5
  title "feedback on organizational training results is provided #{input('at_06_odp_01')} to #{input('at_06_odp_02')}."
  desc <<~DESC
    Provide feedback on organizational training results to the following personnel #{input('at_06_odp_01')}: #{input('at_06_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      feedback on organizational training results is provided #{input('at_06_odp_01')} to #{input('at_06_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Security awareness and training policy; procedures addressing security training records; security awareness and training records; security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security training record retention responsibilities
      TEST: Mechanisms supporting the management of security training records
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Training feedback includes awareness training results and role-based training results. Training results, especially failures of personnel in critical roles, can be indicative of a potentially serious problem. Therefore, it is important that senior managers are made aware of such situations so that they can take appropriate response actions. Training feedback supports the evaluation and update of organizational training described in [AT-2b](#at-2_smt.b) and [AT-3b](#at-3_smt.b).
  GUIDANCE
  tag nist: ['AT-6']
  tag control: 'AT-6'
  tag objective: 'AT-06'
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{}
  tag control_at_6: true
  tag odp: %w{at_06_odp_01 at_06_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AT-06' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
