control 'CM-07(05)(b)' do
  impact 0.5
  title "a deny-all, permit-by-exception policy to allow the execution of authorized software programs on the system is employed;"
  desc <<~DESC
    (a) Identify #{input('cm_07_05_odp_01')};
    (b) Employ a deny-all, permit-by-exception policy to allow the execution of authorized software programs on the system; and
    (c) Review and update the list of authorized software programs #{input('cm_07_05_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a deny-all, permit-by-exception policy to allow the execution of authorized software programs on the system is employed;

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing least functionality in the system; configuration management plan; system design documentation; system configuration settings and associated documentation; list of software programs authorized to execute on the system; system component inventory; common secure configuration checklists; review and update records associated with list of authorized software programs; change control records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for identifying software authorized to execute on the system; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational process for identifying, reviewing, and updating programs authorized to execute on the system; organizational process for implementing authorized software policy; mechanisms supporting and/or implementing authorized software policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Authorized software programs can be limited to specific versions or from a specific source. To facilitate a comprehensive authorized software process and increase the strength of protection for attacks that bypass application level authorized software, software programs may be decomposed into and monitored at different levels of detail. These levels include applications, application programming interfaces, application modules, scripts, system processes, system services, kernel functions, registries, drivers, and dynamic link libraries. The concept of permitting the execution of authorized software may also be applied to user actions, system ports and protocols, IP addresses/ranges, websites, and MAC addresses. Organizations consider verifying the integrity of authorized software programs using digital signatures, cryptographic checksums, or hash functions. Verification of authorized software can occur either prior to execution or at system startup. The identification of authorized URLs for websites is addressed in [CA-3(5)](#ca-3.5) and [SC-7](#sc-7).
  GUIDANCE
  tag nist: ['CM-7 (5)']
  tag control: 'CM-7 (5)'
  tag objective: 'CM-07(05)(b)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_7_5: true
  tag odp: %w{cm_07_05_odp_01 cm_07_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective CM-07(05)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
