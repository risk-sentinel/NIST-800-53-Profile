control 'MA-5 (3)' do
  impact 0.5
  title 'Citizenship Requirements for Classified Systems'
  desc <<~DESC
    Verify that personnel performing maintenance and diagnostic activities on a system processing, storing, or transmitting classified information are U.S. citizens.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-05(03) personnel performing maintenance and diagnostic activities on a system processing, storing, or transmitting classified information are U.S. citizens.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing maintenance personnel; personnel records; maintenance records; access control records; access credentials; access authorizations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with personnel security responsibilities; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Personnel who conduct maintenance on organizational systems may be exposed to classified information during the course of their maintenance activities. If access to classified information on organizational systems is restricted to U.S. citizens, the same restriction is applied to personnel performing maintenance on those systems.
  GUIDANCE
  tag nist: ['MA-5 (3)']
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control MA-5 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
