control 'SA-11 (1)' do
  impact 0.5
  title 'Static Code Analysis'
  desc <<~DESC
    Require the developer of the system, system component, or system service to employ static code analysis tools to identify common flaws and document the results of the analysis.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-11(01)[01] the developer of the system, system component, or system service is required to employ static code analysis tools to identify common flaws;
      SA-11(01)[02] the developer of the system, system component, or system service is required to employ static code analysis tools to document the results of the analysis.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing system developer security testing; procedures addressing flaw remediation; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; security and privacy architecture; system design documentation; system developer security and privacy assessment plans; results of system developer security and privacy assessments; security flaw and remediation tracking records; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with developer security and privacy testing responsibilities; organizational personnel with configuration management responsibilities; system developers
      TEST: Organizational processes for monitoring developer security testing and evaluation; mechanisms supporting and/or implementing the monitoring of developer security testing and evaluation; static code analysis tools
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Static code analysis provides a technology and methodology for security reviews and includes checking for weaknesses in the code as well as for the incorporation of libraries or other included code with known vulnerabilities or that are out-of-date and not supported. Static code analysis can be used to identify vulnerabilities and enforce secure coding practices. It is most effective when used early in the development process, when each code change can automatically be scanned for potential weaknesses. Static code analysis can provide clear remediation guidance and identify defects for developers to fix. Evidence of the correct implementation of static analysis can include aggregate defect density for critical defect types, evidence that defects were inspected by developers or security professionals, and evidence that defects were remediated. A high density of ignored findings, commonly referred to as false positives, indicates a potential problem with the analysis process or the analysis tool. In such cases, organizations weigh the validity of the evidence against evidence from other sources.
  GUIDANCE
  tag nist: ['SA-11 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-11 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
