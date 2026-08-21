control 'CM-7 (9)' do
  impact 0.5
  title 'Prohibiting The Use of Unauthorized Hardware'
  desc <<~DESC
    (a) Identify #{input('cm_07_09_odp_01')};
    (b) Prohibit the use or connection of unauthorized hardware components;
    (c) Review and update the list of authorized hardware components #{input('cm_07_09_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-07(09)(a) #{input('cm_07_09_odp_01')} are identified;
      CM-07(09)(b) the use or connection of unauthorized hardware components is prohibited;
      CM-07(09)(c) the list of authorized hardware components is reviewed and updated #{input('cm_07_09_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; network connection policy and procedures; configuration management plan; system security plan; system design documentation; system component inventory; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system hardware management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational process for approving execution of binary or machine-executable code; mechanisms supporting and/or implementing the prohibition of binary or machine-executable code
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Hardware components provide the foundation for organizational systems and the platform for the execution of authorized software programs. Managing the inventory of hardware components and controlling which hardware components are permitted to be installed or connected to organizational systems is essential in order to provide adequate security.
  GUIDANCE
  tag nist: ['CM-7 (9)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag odp: %w{cm_07_09_odp_01 cm_07_09_odp_02}

  describe 'NIST SP 800-53 Rev 5 control CM-7 (9)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
