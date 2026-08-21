control 'AU-06(08)' do
  impact 0.5
  title "a full text analysis of logged privileged commands in a physically distinct component or subsystem of the system or other system that is dedicated to that analysis is performed."
  desc <<~DESC
    Perform a full text analysis of logged privileged commands in a physically distinct component or subsystem of the system, or other system that is dedicated to that analysis.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a full text analysis of logged privileged commands in a physically distinct component or subsystem of the system or other system that is dedicated to that analysis is performed.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing audit review, analysis, and reporting; system design documentation; system configuration settings and associated documentation; text analysis tools and techniques; text analysis documentation of audited privileged commands; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with audit review, analysis, and reporting responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms implementing the capability to perform a full text analysis of audited privilege commands
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Full text analysis of privileged commands requires a distinct environment for the analysis of audit record information related to privileged users without compromising such information on the system where the users have elevated privileges, including the capability to execute privileged commands. Full text analysis refers to analysis that considers the full text of privileged commands (i.e., commands and parameters) as opposed to analysis that considers only the name of the command. Full text analysis includes the use of pattern matching and heuristics.
  GUIDANCE
  tag nist: ['AU-6 (8)']
  tag control: 'AU-6 (8)'
  tag objective: 'AU-06(08)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_6_8: true

  describe 'NIST SP 800-53A Rev 5 objective AU-06(08)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
