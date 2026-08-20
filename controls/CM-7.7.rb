control 'CM-7 (7)' do
  impact 0.5
  title 'Code Execution in Protected Environments'
  desc <<~DESC
    Allow execution of binary or machine-executable code only in confined physical or virtual machine environments and with the explicit approval of #{input('cm_07_07_odp')} when such code is:
      (a) Obtained from sources with limited or no warranty; and/or
      (b) Without the provision of source code.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-07(07) the execution of binary or machine-executable code is only allowed in confined physical or virtual machine environments;
        CM-07(07)(a) the execution of binary or machine-executable code obtained from sources with limited or no warranty is only allowed with the explicit approval of #{input('cm_07_07_odp')};
        CM-07(07)(b) the execution of binary or machine-executable code without the provision of source code is only allowed with the explicit approval of #{input('cm_07_07_odp')}.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing least functionality in the system; configuration management plan; system design documentation; system configuration settings and associated documentation; list or record of binary or machine-executable code; system component inventory; common secure configuration checklists; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for approving execution of binary or machine-executable code; organizational personnel with information security responsibilities; organizational personnel with software management responsibilities; system/network administrators; system developers
      TEST: Organizational process for approving execution of binary or machine-executable code; organizational process for confining binary or machine-executable code to physical or virtual machine environments; mechanisms supporting and/or implementing the confinement of binary or machine-executable code to physical or virtual machine environments
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Code execution in protected environments applies to all sources of binary or machine-executable code, including commercial software and firmware and open-source software.
  GUIDANCE
  tag nist: ['CM-7 (7)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag odp: %w{cm_07_07_odp}

  describe 'NIST SP 800-53 Rev 5 control CM-7 (7)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
