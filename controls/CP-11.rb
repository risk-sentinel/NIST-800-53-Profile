control 'CP-11' do
  impact 0.5
  title 'Alternate Communications Protocols'
  desc <<~DESC
    Provide the capability to employ #{input('cp_11_odp')} in support of maintaining continuity of operations.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-11 the capability to employ #{input('cp_11_odp')} are provided in support of maintaining continuity of operations.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternative communications protocols; contingency plan; continuity of operations plan; system design documentation; system configuration settings and associated documentation; list of alternative communications protocols supporting continuity of operations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning and plan implementation responsibilities; organizational personnel with continuity of operations planning and plan implementation responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms employing alternative communications protocols
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Contingency plans and the contingency training or testing associated with those plans incorporate an alternate communications protocol capability as part of establishing resilience in organizational systems. Switching communications protocols may affect software applications and operational aspects of systems. Organizations assess the potential side effects of introducing alternate communications protocols prior to implementation.
  GUIDANCE
  tag nist: ['CP-11']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag odp: %w{cp_11_odp}

  describe 'NIST SP 800-53 Rev 5 control CP-11' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
