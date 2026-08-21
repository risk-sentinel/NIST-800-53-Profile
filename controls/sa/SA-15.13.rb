control 'SA-15(13)' do
  impact 0.5
  title "Determine if: the developer of the system, system component, or system service uses #{input('sa_15_13_odp_01')} to log #{input('sa_15_13_odp_02')} at #{input('sa_15_13_odp_03')}."
  desc <<~DESC
    Require the developer of the system or system component to minimize the use of personally identifiable information in development and test environments.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      Determine if:

    the developer of the system, system component, or system service uses #{input('sa_15_13_odp_01')} to log #{input('sa_15_13_odp_02')} at #{input('sa_15_13_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy;; solicitation documentation;; acquisition documentation;; service level agreements;; acquisition contracts for the system, system component, or system service;; requirements for logging format, event types, and level of detail;; documentation evidence of requirements for logging format, event types, and level of detail;; system security plan; other relevant documents or records.
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities;; organizational personnel with information security responsibilities;; system developer
      TEST: Developer logs for the system, system component, or system service.
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In support of better incident response and the ability to more quickly reconstruct security-related actions, identifying specific requirements for secure logging facilitates the ability to connect application-produced audit event logs with operational data. Event types are consistent with the event types defined in [AU-02](#au-2).
  GUIDANCE
  tag nist: ['SA-15 (13)']
  tag control: 'SA-15 (13)'
  tag objective: 'SA-15(13)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_15_13: true
  tag odp: %w{sa_15_13_odp_01 sa_15_13_odp_02 sa_15_13_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SA-15(13)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
