control 'MA-4 (7)' do
  impact 0.5
  title 'Disconnect Verification'
  desc <<~DESC
    Verify session and network connection termination after the completion of nonlocal maintenance and diagnostic sessions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-04(07)[01] session connection termination is verified after the completion of nonlocal maintenance and diagnostic sessions;
      MA-04(07)[02] network connection termination is verified after the completion of nonlocal maintenance and diagnostic sessions.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing nonlocal system maintenance; system design documentation; system configuration settings and associated documentation; session/network termination logs; cryptographic mechanisms protecting nonlocal maintenance activities; maintenance records; diagnostic records; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; network engineers; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms implementing remote disconnect verifications of terminated nonlocal maintenance and diagnostic sessions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Verifying the termination of a connection once maintenance is completed ensures that connections established during nonlocal maintenance and diagnostic sessions have been terminated and are no longer available for use.
  GUIDANCE
  tag nist: ['MA-4 (7)']
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control MA-4 (7)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
