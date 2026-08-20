control 'CM-7 (2)' do
  impact 0.5
  title 'Prevent Program Execution'
  desc <<~DESC
    Prevent program execution in accordance with #{input('cm_07_02_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-07(02) program execution is prevented in accordance with #{input('cm_07_02_odp_01')}.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing least functionality in the system; configuration management plan; system design documentation; system configuration settings and associated documentation; system component inventory; common secure configuration checklists; specifications for preventing software program execution; change control records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Organizational processes preventing program execution on the system; organizational processes for software program usage and restrictions; mechanisms preventing program execution on the system; mechanisms supporting and/or implementing software program usage and restrictions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Prevention of program execution addresses organizational policies, rules of behavior, and/or access agreements that restrict software usage and the terms and conditions imposed by the developer or manufacturer, including software licensing and copyrights. Restrictions include prohibiting auto-execute features, restricting roles allowed to approve program execution, permitting or prohibiting specific software programs, or restricting the number of program instances executed at the same time.
  GUIDANCE
  tag nist: ['CM-7 (2)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{cm_07_02_odp_01}

  describe 'NIST SP 800-53 Rev 5 control CM-7 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
