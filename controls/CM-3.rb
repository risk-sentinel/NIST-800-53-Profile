control 'CM-3' do
  impact 0.5
  title 'Configuration Change Control'
  desc <<~DESC
    a. Determine and document the types of changes to the system that are configuration-controlled;
    b. Review proposed configuration-controlled changes to the system and approve or disapprove such changes with explicit consideration for security and privacy impact analyses;
    c. Document configuration change decisions associated with the system;
    d. Implement approved configuration-controlled changes to the system;
    e. Retain records of configuration-controlled changes to the system for #{input('cm_03_odp_01')};
    f. Monitor and review activities associated with configuration-controlled changes to the system; and
    g. Coordinate and provide oversight for configuration change control activities through #{input('cm_03_odp_02')} that convenes #{input('cm_03_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-03a. the types of changes to the system that are configuration-controlled are determined and documented;
      CM-03b.
        CM-03b.[01] proposed configuration-controlled changes to the system are reviewed;
        CM-03b.[02] proposed configuration-controlled changes to the system are approved or disapproved with explicit consideration for security and privacy impact analyses;
      CM-03c. configuration change decisions associated with the system are documented;
      CM-03d. approved configuration-controlled changes to the system are implemented;
      CM-03e. records of configuration-controlled changes to the system are retained for #{input('cm_03_odp_01')};
      CM-03f.
        CM-03f.[01] activities associated with configuration-controlled changes to the system are monitored;
        CM-03f.[02] activities associated with configuration-controlled changes to the system are reviewed;
      CM-03g.
        CM-03g.[01] configuration change control activities are coordinated and overseen by #{input('cm_03_odp_02')};
        CM-03g.[02] the configuration control element convenes #{input('cm_03_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system configuration change control; configuration management plan; system architecture and configuration documentation; change control records; system audit records; change control audit and review reports; agenda/minutes/documentation from configuration change control oversight meetings; system security plan; privacy plan; privacy impact assessments; system of records notices; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration change control responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; members of change control board or similar
      TEST: Organizational processes for configuration change control; mechanisms that implement configuration change control
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Configuration change control for organizational systems involves the systematic proposal, justification, implementation, testing, review, and disposition of system changes, including system upgrades and modifications. Configuration change control includes changes to baseline configurations, configuration items of systems, operational procedures, configuration settings for system components, remediate vulnerabilities, and unscheduled or unauthorized changes. Processes for managing configuration changes to systems include Configuration Control Boards or Change Advisory Boards that review and approve proposed changes. For changes that impact privacy risk, the senior agency official for privacy updates privacy impact assessments and system of records notices. For new systems or major upgrades, organizations consider including representatives from the development organizations on the Configuration Control Boards or Change Advisory Boards. Auditing of changes includes activities before and after changes are made to systems and the auditing activities required to implement such changes. See also [SA-10](#sa-10).
  GUIDANCE
  tag nist: ['CM-3']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{cm_03_odp_01 cm_03_odp_02 cm_03_odp_03}

  describe 'NIST SP 800-53 Rev 5 control CM-3' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
