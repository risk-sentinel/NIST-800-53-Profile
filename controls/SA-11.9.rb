control 'SA-11 (9)' do
  impact 0.5
  title 'Interactive Application Security Testing'
  desc <<~DESC
    Require the developer of the system, system component, or system service to employ interactive application security testing tools to identify flaws and document the results.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-11(09)[01] the developer of the system, system component, or system service is required to employ interactive application security testing tools to identify flaws;
      SA-11(09)[02] the developer of the system, system component, or system service is required to document the results of flaw identification.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing system developer security testing; procedures addressing interactive application security testing; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system developer security test and evaluation plans; security test and evaluation results; security flaw and remediation tracking reports; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with developer security testing responsibilities; organizational personnel with configuration management responsibilities; system developers
      TEST: Organizational processes for interactive application security testing; mechanisms supporting and/or implementing interactive application security testing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Interactive (also known as instrumentation-based) application security testing is a method of detecting vulnerabilities by observing applications as they run during testing. The use of instrumentation relies on direct measurements of the actual running applications and uses access to the code, user interaction, libraries, frameworks, backend connections, and configurations to directly measure control effectiveness. When combined with analysis techniques, interactive application security testing can identify a broad range of potential vulnerabilities and confirm control effectiveness. Instrumentation-based testing works in real time and can be used continuously throughout the system development life cycle.
  GUIDANCE
  tag nist: ['SA-11 (9)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-11 (9)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
