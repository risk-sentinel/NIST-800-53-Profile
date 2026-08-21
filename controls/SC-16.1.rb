control 'SC-16 (1)' do
  impact 0.5
  title 'Integrity Verification'
  desc <<~DESC
    Verify the integrity of transmitted security and privacy attributes.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-16(01)[01] the integrity of transmitted security attributes is verified;
      SC-16(01)[02] the integrity of transmitted privacy attributes is verified.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing the transmission of security and privacy attributes; access control policy and procedures; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms supporting and/or implementing verification of the integrity of transmitted security and privacy attributes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Part of verifying the integrity of transmitted information is ensuring that security and privacy attributes that are associated with such information have not been modified in an unauthorized manner. Unauthorized modification of security or privacy attributes can result in a loss of integrity for transmitted information.
  GUIDANCE
  tag nist: ['SC-16 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SC-16 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
