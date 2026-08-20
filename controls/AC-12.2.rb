control 'AC-12 (2)' do
  impact 0.5
  title 'Termination Message'
  desc <<~DESC
    Display an explicit logout message to users indicating the termination of authenticated communications sessions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-12(02) an explicit logout message is displayed to users indicating the termination of authenticated communication sessions.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing session termination; user logout messages; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: System session termination mechanisms; display of logout messages
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Logout messages for web access can be displayed after authenticated sessions have been terminated. However, for certain types of sessions, including file transfer protocol (FTP) sessions, systems typically send logout messages as final messages prior to terminating sessions.
  GUIDANCE
  tag nist: ['AC-12 (2)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AC-12 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
