control 'SI-02(07)c.[01]' do
  impact 0.5
  title "The actions (defined in [SI-02(07)b.](#si-2.7_smt.b)) are implemented"
  desc <<~DESC
    a. Conduct root cause analysis to identify underlying causes of issues or failures.
    b. Develop actions to address the root cause of the issue or failure.
    c. Implement the actions and monitor the implementation for effectiveness.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      The actions (defined in [SI-02(07)b.](#si-2.7_smt.b)) are implemented

    Assessment methods and objects:
      EXAMINE: System and information integrity policy;; system and information integrity procedures;; procedures addressing flaw remediation;; procedures addressing root cause analysis/process improvement;; system design documentation;; system configuration settings and associated documentation;; system audit records;; system security and privacy plan;; other relevant documents or records
      INTERVIEW: System/network administrators;; organizational personnel with information security and privacy responsibilities;; organizational personnel responsible for installing, configuring, and/or maintaining the system;; organizational personnel responsible for flaw remediation;; organizational personnel with configuration management responsibilities
      TEST: Organizational processes for identifying, reporting, and correcting system flaws;; organizational process for installing software and firmware updates;; mechanisms supporting and/or implementing the reporting and correcting of system flaws;; mechanisms supporting and/or implementing testing software and firmware updates
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Root cause analysis includes a wide range of approaches, tools, and techniques to systematically identify the underlying cause of issues or failures to systems and systems components (hardware, software, and firmware). Organizations consider the severity of the incident to determine what root cause analysis method is used and how quickly implementation of the remediation actions. The root cause analysis includes a timeline, missed warning signs, key decisions, gaps, mitigations, and verification of effectiveness. The actions identified to address the source of the issue are implemented and integrated into applicable organizational policy, procedures, and control implementation.
  GUIDANCE
  tag nist: ['SI-2 (7)']
  tag control: 'SI-2 (7)'
  tag objective: 'SI-02(07)c.[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_2_7: true

  describe 'NIST SP 800-53A Rev 5 objective SI-02(07)c.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
