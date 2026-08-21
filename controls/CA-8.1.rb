control 'CA-8 (1)' do
  impact 0.5
  title 'Independent Penetration Testing Agent or Team'
  desc <<~DESC
    Employ an independent penetration testing agent or team to perform penetration testing on the system or system components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CA-08(01) an independent penetration testing agent or team is employed to perform penetration testing on the system or system components.

    Assessment methods and objects:
      EXAMINE: Assessment, authorization, and monitoring policy; procedures addressing penetration testing; assessment plan; penetration test report; assessment report; security assessment evidence; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with assessment responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Independent penetration testing agents or teams are individuals or groups who conduct impartial penetration testing of organizational systems. Impartiality implies that penetration testing agents or teams are free from perceived or actual conflicts of interest with respect to the development, operation, or management of the systems that are the targets of the penetration testing. [CA-2(1)](#ca-2.1) provides additional information on independent assessments that can be applied to penetration testing.
  GUIDANCE
  tag nist: ['CA-8 (1)']
  tag rev: 'Rev_5'
  tag family: 'Assessment, Authorization, and Monitoring'
  tag baseline: %w{HIGH}
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control CA-8 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
