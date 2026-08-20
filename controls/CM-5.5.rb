control 'CM-5 (5)' do
  impact 0.5
  title 'Privilege Limitation for Production and Operation'
  desc <<~DESC
    (a) Limit privileges to change system components and system-related information within a production or operational environment; and
    (b) Review and reevaluate privileges #{input('cm_5_5_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-05(05)(a)
        CM-05(05)(a)[01] privileges to change system components within a production or operational environment are limited;
        CM-05(05)(a)[02] privileges to change system-related information within a production or operational environment are limited;
      CM-05(05)(b)
        CM-05(05)(b)[01] privileges are reviewed #{input('cm_05_05_odp_01')};
        CM-05(05)(b)[02] privileges are reevaluated #{input('cm_05_05_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing access restrictions for changes to the system; configuration management plan; system design documentation; system architecture and configuration documentation; system configuration settings and associated documentation; user privilege reviews; user privilege recertifications; system component inventory; change control records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing access restrictions to change; mechanisms supporting and/or implementing access restrictions for change
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In many organizations, systems support multiple mission and business functions. Limiting privileges to change system components with respect to operational systems is necessary because changes to a system component may have far-reaching effects on mission and business processes supported by the system. The relationships between systems and mission/business processes are, in some cases, unknown to developers. System-related information includes operational procedures.
  GUIDANCE
  tag nist: ['CM-5 (5)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag odp: %w{cm_05_05_odp_01 cm_05_05_odp_02 cm_5_5_prm_1}

  describe 'NIST SP 800-53 Rev 5 control CM-5 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
