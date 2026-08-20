control 'SC-18 (5)' do
  impact 0.5
  title 'Allow Execution Only in Confined Environments'
  desc <<~DESC
    Allow execution of permitted mobile code only in confined virtual machine environments.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-18(05) execution of permitted mobile code is allowed only in confined virtual machine environments.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing mobile code; mobile code usage allowances; mobile code usage restrictions; system design documentation; system configuration settings and associated documentation; list of confined virtual machine environments in which the execution of organizationally acceptable mobile code is allowed; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with responsibilities for managing mobile code
      TEST: Mechanisms allowing for the execution of permitted mobile code in confined virtual machine environments
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Permitting the execution of mobile code only in confined virtual machine environments helps prevent the introduction of malicious code into other systems and system components.
  GUIDANCE
  tag nist: ['SC-18 (5)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SC-18 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
