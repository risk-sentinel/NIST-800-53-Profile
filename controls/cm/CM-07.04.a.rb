control 'CM-07(04)(a)' do
  impact 0.5
  title "#{input('cm_07_04_odp_01')} are identified;"
  desc <<~DESC
    (a) Identify #{input('cm_07_04_odp_01')};
    (b) Employ an allow-all, deny-by-exception policy to prohibit the execution of unauthorized software programs on the system; and
    (c) Review and update the list of unauthorized software programs #{input('cm_07_04_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('cm_07_04_odp_01')} are identified;

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing least functionality in the system; configuration management plan; system design documentation; system configuration settings and associated documentation; list of software programs not authorized to execute on the system; system component inventory; common secure configuration checklists; review and update records associated with list of unauthorized software programs; change control records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for identifying software not authorized to execute on the system; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational process for identifying, reviewing, and updating programs not authorized to execute on the system; organizational process for implementing unauthorized software policy; mechanisms supporting and/or implementing unauthorized software policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Unauthorized software programs can be limited to specific versions or from a specific source. The concept of prohibiting the execution of unauthorized software may also be applied to user actions, system ports and protocols, IP addresses/ranges, websites, and MAC addresses.
  GUIDANCE
  tag nist: ['CM-7 (4)']
  tag control: 'CM-7 (4)'
  tag objective: 'CM-07(04)(a)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_7_4: true
  tag odp: %w{cm_07_04_odp_01 cm_07_04_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective CM-07(04)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
