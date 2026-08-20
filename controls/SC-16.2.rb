control 'SC-16 (2)' do
  impact 0.5
  title 'Anti-spoofing Mechanisms'
  desc <<~DESC
    Implement anti-spoofing mechanisms to prevent adversaries from falsifying the security attributes indicating the successful application of the security process.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-16(02) anti-spoofing mechanisms are implemented to prevent adversaries from falsifying the security attributes indicating the successful application of the security process.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing the transmission of security and privacy attributes; access control policy and procedures; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing anti-spoofing mechanisms
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Some attack vectors operate by altering the security attributes of an information system to intentionally and maliciously implement an insufficient level of security within the system. The alteration of attributes leads organizations to believe that a greater number of security functions are in place and operational than have actually been implemented.
  GUIDANCE
  tag nist: ['SC-16 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SC-16 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
