control 'AC-03(10)' do
  impact 0.5
  title "an audited override of automated access control mechanisms is employed under #{input('ac_03_10_odp_01')} by #{input('ac_03_10_odp_02')}."
  desc <<~DESC
    Employ an audited override of automated access control mechanisms under #{input('ac_03_10_odp_01')} by #{input('ac_03_10_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an audited override of automated access control mechanisms is employed under #{input('ac_03_10_odp_01')} by #{input('ac_03_10_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; conditions for employing audited override of automated access control mechanisms; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing access enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In certain situations, such as when there is a threat to human life or an event that threatens the organization’s ability to carry out critical missions or business functions, an override capability for access control mechanisms may be needed. Override conditions are defined by organizations and used only in those limited circumstances. Audit events are defined in [AU-2](#au-2) . Audit records are generated in [AU-12](#au-12).
  GUIDANCE
  tag nist: ['AC-3 (10)']
  tag control: 'AC-3 (10)'
  tag objective: 'AC-03(10)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_3_10: true
  tag odp: %w{ac_03_10_odp_01 ac_03_10_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AC-03(10)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
