control 'SA-11 (8)' do
  impact 0.5
  title 'Dynamic Code Analysis'
  desc <<~DESC
    Require the developer of the system, system component, or system service to employ dynamic code analysis tools to identify common flaws and document the results of the analysis.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-11(08)[01] the developer of the system, system component, or system service is required to employ dynamic code analysis tools to identify common flaws;
      SA-11(08)[02] the developer of the system, system component, or system service is required to document the results of the analysis.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing system developer security testing; procedures addressing flaw remediation; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system developer security test and evaluation plans; security test and evaluation results; security flaw and remediation tracking reports; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with developer security testing responsibilities; organizational personnel with configuration management responsibilities; system developers
      TEST: Organizational processes for monitoring developer security testing and evaluation; mechanisms supporting and/or implementing the monitoring of developer security testing and evaluation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Dynamic code analysis provides runtime verification of software programs using tools capable of monitoring programs for memory corruption, user privilege issues, and other potential security problems. Dynamic code analysis employs runtime tools to ensure that security functionality performs in the way it was designed. A type of dynamic analysis, known as fuzz testing, induces program failures by deliberately introducing malformed or random data into software programs. Fuzz testing strategies are derived from the intended use of applications and the functional and design specifications for the applications. To understand the scope of dynamic code analysis and the assurance provided, organizations may also consider conducting code coverage analysis (i.e., checking the degree to which the code has been tested using metrics such as percent of subroutines tested or percent of program statements called during execution of the test suite) and/or concordance analysis (i.e., checking for words that are out of place in software code, such as non-English language words or derogatory terms).
  GUIDANCE
  tag nist: ['SA-11 (8)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-11 (8)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
