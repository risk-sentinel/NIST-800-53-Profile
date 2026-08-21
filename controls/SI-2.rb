control 'SI-2' do
  impact 0.5
  title 'Flaw Remediation'
  desc <<~DESC
    a. Identify, report, and correct system flaws;
    b. Test software and firmware updates related to flaw remediation for effectiveness and potential side effects before installation;
    c. Install security-relevant software and firmware updates within #{input('si_02_odp')} of the release of the updates; and
    d. Incorporate flaw remediation into the organizational configuration management process.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-02a.
        SI-02a.[01] system flaws are identified;
        SI-02a.[02] system flaws are reported;
        SI-02a.[03] system flaws are corrected;
      SI-02b.
        SI-02b.[01] software updates related to flaw remediation are tested for effectiveness before installation;
        SI-02b.[02] software updates related to flaw remediation are tested for potential side effects before installation;
        SI-02b.[03] firmware updates related to flaw remediation are tested for effectiveness before installation;
        SI-02b.[04] firmware updates related to flaw remediation are tested for potential side effects before installation;
      SI-02c.
        SI-02c.[01] security-relevant software updates are installed within #{input('si_02_odp')} of the release of the updates;
        SI-02c.[02] security-relevant firmware updates are installed within #{input('si_02_odp')} of the release of the updates;
      SI-02d. flaw remediation is incorporated into the organizational configuration management process.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing flaw remediation; procedures addressing configuration management; list of flaws and vulnerabilities potentially affecting the system; list of recent security flaw remediation actions performed on the system (e.g., list of installed patches, service packs, hot fixes, and other software updates to correct system flaws); test results from the installation of software and firmware updates to correct system flaws; installation/change control records for security-relevant software and firmware updates; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; organizational personnel responsible for installing, configuring, and/or maintaining the system; organizational personnel responsible for flaw remediation; organizational personnel with configuration management responsibilities
      TEST: Organizational processes for identifying, reporting, and correcting system flaws; organizational process for installing software and firmware updates; mechanisms supporting and/or implementing the reporting and correcting of system flaws; mechanisms supporting and/or implementing testing software and firmware updates
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The need to remediate system flaws applies to all types of software and firmware. Organizations identify systems affected by software flaws, including potential vulnerabilities resulting from those flaws, and report this information to designated organizational personnel with information security and privacy responsibilities. Organizations consider establishing a controlled patching environment for mission-critical systems. Security-relevant updates include patches, service packs, and malicious code signatures. Organizations also address flaws discovered during assessments, continuous monitoring, incident response activities, and system error handling. By incorporating flaw remediation into configuration management processes, required remediation actions can be tracked and verified.

    Organization-defined time periods for updating security-relevant software and firmware may vary based on a variety of risk factors, including the security category of the system, the criticality of the update (i.e., severity of the vulnerability related to the discovered flaw), the organizational risk tolerance, the mission supported by the system, or the threat environment. Some types of flaw remediation may require more testing than other types. Organizations determine the type of testing needed for the specific type of flaw remediation activity under consideration and the types of changes that are to be configuration-managed. Flaw remediation testing addresses both effectiveness of addressing security issues and for potential side effects on functionality, system and system component performance and operations. When implementing remediation activities, organizations consider the order and timing of updates to validate correct execution within the system environment, and to support system and component availability needs (i.e., implementing a staggered deployment strategy). In some situations, organizations may determine that the testing of software or firmware updates is not necessary or practical, such as when implementing simple malicious code signature updates. In testing decisions, organizations consider whether security-relevant software or firmware updates are obtained from authorized sources with appropriate digital signatures.

    When implementing remediation activities, organizations consider the order and timing of updates to validate correct execution within the system environment, and to support system and component availability needs (i.e., implementing a staggered deployment strategy). Organizations verify that software and firmware updates come from authorized sources prior to downloading.
  GUIDANCE
  tag nist: ['SI-2']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{si_02_odp}

  describe 'NIST SP 800-53 Rev 5 control SI-2' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
