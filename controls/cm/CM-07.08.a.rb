control 'CM-07(08)(a)' do
  impact 0.5
  title "the use of binary or machine-executable code is prohibited when it originates from sources with limited or no warranty or without the provision of source code;"
  desc <<~DESC
    (a) Prohibit the use of binary or machine-executable code from sources with limited or no warranty or without the provision of source code; and
    (b) Allow exceptions only for compelling mission or operational requirements and with the approval of the authorizing official.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the use of binary or machine-executable code is prohibited when it originates from sources with limited or no warranty or without the provision of source code;

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing least functionality in the system; configuration management plan; system security plan; system design documentation; system configuration settings and associated documentation; list or record of binary or machine-executable code; system component inventory; common secure configuration checklists; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for determining mission and operational requirements; authorizing official for the system; organizational personnel with information security responsibilities; organizational personnel with software management responsibilities; system/network administrators
      TEST: Organizational process for approving execution of binary or machine-executable code; mechanisms supporting and/or implementing the prohibition of binary or machine-executable code
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Binary or machine executable code applies to all sources of binary or machine-executable code, including commercial software and firmware and open-source software. Organizations assess software products without accompanying source code or from sources with limited or no warranty for potential security impacts. The assessments address the fact that software products without the provision of source code may be difficult to review, repair, or extend. In addition, there may be no owners to make such repairs on behalf of organizations. If open-source software is used, the assessments address the fact that there is no warranty, the open-source software could contain back doors or malware, and there may be no support available.
  GUIDANCE
  tag nist: ['CM-7 (8)']
  tag control: 'CM-7 (8)'
  tag objective: 'CM-07(08)(a)'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_7_8: true

  describe 'NIST SP 800-53A Rev 5 objective CM-07(08)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
