control 'SC-2 (2)' do
  impact 0.5
  title 'Disassociability'
  desc <<~DESC
    Store state information from applications and software separately.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-02(02) state information is stored separately from applications and software.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing application and software partitioning; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; system developer
      TEST: Separation of application state information from software
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    If a system is compromised, storing applications and software separately from state information about users’ interactions with an application may better protect individuals’ privacy.
  GUIDANCE
  tag nist: ['SC-2 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SC-2 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
