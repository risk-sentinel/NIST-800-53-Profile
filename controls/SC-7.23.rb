control 'SC-7 (23)' do
  impact 0.5
  title 'Disable Sender Feedback on Protocol Validation Failure'
  desc <<~DESC
    Disable feedback to senders on protocol format validation failure.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-07(23) feedback to senders is disabled on protocol format validation failure.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; system architecture; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms supporting and/or implementing the disabling of feedback to senders on protocol format validation failure
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Disabling feedback to senders when there is a failure in protocol validation format prevents adversaries from obtaining information that would otherwise be unavailable.
  GUIDANCE
  tag nist: ['SC-7 (23)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SC-7 (23)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
