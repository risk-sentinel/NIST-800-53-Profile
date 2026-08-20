control 'AC-12 (3)' do
  impact 0.5
  title 'Timeout Warning Message'
  desc <<~DESC
    Display an explicit message to users indicating that the session will end in #{input('ac_12_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-12(03) an explicit message to users is displayed indicating that the session will end in #{input('ac_12_03_odp')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing session termination; time until end of session messages; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: System session termination mechanisms; display of end of session time
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    To increase usability, notify users of pending session termination and prompt users to continue the session. The pending session termination time period is based on the parameters defined in the [AC-12](#ac-12) base control.
  GUIDANCE
  tag nist: ['AC-12 (3)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_12_03_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-12 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
