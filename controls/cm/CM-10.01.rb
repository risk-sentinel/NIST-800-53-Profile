control 'CM-10(01)' do
  impact 0.5
  title "#{input('cm_10_01_odp')} are established for the use of open-source software."
  desc <<~DESC
    Establish the following restrictions on the use of open-source software: #{input('cm_10_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('cm_10_01_odp')} are established for the use of open-source software.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; software usage restrictions; software contract agreements and copyright laws; site license documentation; list of software usage restrictions; software license tracking reports; configuration management plan; system security plan; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel operating, using, and/or maintaining the system; organizational personnel with software license management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for tracking the use of software protected by quantity licenses; organizational processes for controlling/documenting the use of peer-to-peer file sharing technology; mechanisms implementing software license tracking; mechanisms implementing and controlling the use of peer-to-peer files sharing technology
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Open-source software refers to software that is available in source code form. Certain software rights normally reserved for copyright holders are routinely provided under software license agreements that permit individuals to study, change, and improve the software. From a security perspective, the major advantage of open-source software is that it provides organizations with the ability to examine the source code. In some cases, there is an online community associated with the software that inspects, tests, updates, and reports on issues found in software on an ongoing basis. However, remediating vulnerabilities in open-source software may be problematic. There may also be licensing issues associated with open-source software, including the constraints on derivative use of such software. Open-source software that is available only in binary form may increase the level of risk in using such software.
  GUIDANCE
  tag nist: ['CM-10 (1)']
  tag control: 'CM-10 (1)'
  tag objective: 'CM-10(01)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_10_1: true
  tag odp: %w{cm_10_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective CM-10(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
