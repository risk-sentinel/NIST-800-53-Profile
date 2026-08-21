control 'AC-02(12)(b)' do
  impact 0.5
  title "atypical usage of system accounts is reported to #{input('ac_02_12_odp_02')}."
  desc <<~DESC
    (a) Monitor system accounts for #{input('ac_02_12_odp_01')} ; and
    (b) Report atypical usage of system accounts to #{input('ac_02_12_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      atypical usage of system accounts is reported to #{input('ac_02_12_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing account management; system design documentation; system configuration settings and associated documentation; system monitoring records; system audit records; audit tracking and monitoring reports; privacy impact assessment; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing account management functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Atypical usage includes accessing systems at certain times of the day or from locations that are not consistent with the normal usage patterns of individuals. Monitoring for atypical usage may reveal rogue behavior by individuals or an attack in progress. Account monitoring may inadvertently create privacy risks since data collected to identify atypical usage may reveal previously unknown information about the behavior of individuals. Organizations assess and document privacy risks from monitoring accounts for atypical usage in their privacy impact assessment and make determinations that are in alignment with their privacy program plan.
  GUIDANCE
  tag nist: ['AC-2 (12)']
  tag control: 'AC-2 (12)'
  tag objective: 'AC-02(12)(b)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_ac_2_12: true
  tag odp: %w{ac_02_12_odp_01 ac_02_12_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AC-02(12)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
