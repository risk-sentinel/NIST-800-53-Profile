control 'SC-47' do
  impact 0.5
  title "#{input('sc_47_odp')} are established for system operations and operational command and control."
  desc <<~DESC
    Establish #{input('sc_47_odp')} for system operations organizational command and control.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_47_odp')} are established for system operations and operational command and control.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing communication paths; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms supporting and/or implementing alternate communication paths for system operations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    An incident, whether adversarial- or nonadversarial-based, can disrupt established communications paths used for system operations and organizational command and control. Alternate communications paths reduce the risk of all communications paths being affected by the same incident. To compound the problem, the inability of organizational officials to obtain timely information about disruptions or to provide timely direction to operational elements after a communications path incident, can impact the ability of the organization to respond to such incidents in a timely manner. Establishing alternate communications paths for command and control purposes, including designating alternative decision makers if primary decision makers are unavailable and establishing the extent and limitations of their actions, can greatly facilitate the organization’s ability to continue to operate and take appropriate actions during an incident.
  GUIDANCE
  tag nist: ['SC-47']
  tag control: 'SC-47'
  tag objective: 'SC-47'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_47: true
  tag odp: %w{sc_47_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-47' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
