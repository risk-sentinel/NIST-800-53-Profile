control 'AC-12' do
  impact 0.5
  title "a user session is automatically terminated after #{input('ac_12_odp')}."
  desc <<~DESC
    Automatically terminate a user session after #{input('ac_12_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a user session is automatically terminated after #{input('ac_12_odp')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing session termination; system design documentation; system configuration settings and associated documentation; list of conditions or trigger events requiring session disconnect; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Automated mechanisms implementing user session termination
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Session termination addresses the termination of user-initiated logical sessions (in contrast to [SC-10](#sc-10) , which addresses the termination of network connections associated with communications sessions (i.e., network disconnect)). A logical session (for local, network, and remote access) is initiated whenever a user (or process acting on behalf of a user) accesses an organizational system. Such user sessions can be terminated without terminating network sessions. Session termination ends all processes associated with a user’s logical session except for those processes that are specifically created by the user (i.e., session owner) to continue after the session is terminated. Conditions or trigger events that require automatic termination of the session include organization-defined periods of user inactivity, targeted responses to certain types of incidents, or time-of-day restrictions on system use.
  GUIDANCE
  tag nist: ['AC-12']
  tag control: 'AC-12'
  tag objective: 'AC-12'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_12: true
  tag odp: %w{ac_12_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-12' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
