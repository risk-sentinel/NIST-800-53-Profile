control 'CP-3 (2)' do
  impact 0.5
  title 'Mechanisms Used in Training Environments'
  desc <<~DESC
    Employ mechanisms used in operations to provide a more thorough and realistic contingency training environment.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-03(02) mechanisms used in operations are employed to provide a more thorough and realistic contingency training environment.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency training; contingency plan; contingency training curriculum; contingency training material; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning, plan implementation, and training responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for contingency training; mechanisms for providing contingency training environments
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Operational mechanisms refer to processes that have been established to accomplish an organizational goal or a system that supports a particular organizational mission or business objective. Actual mission and business processes, systems, and/or facilities may be used to generate simulated events and enhance the realism of simulated events during contingency training.
  GUIDANCE
  tag nist: ['CP-3 (2)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control CP-3 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
