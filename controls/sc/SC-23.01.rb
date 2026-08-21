control 'SC-23(01)' do
  impact 0.5
  title "session identifiers are invalidated upon user logout or other session termination."
  desc <<~DESC
    Invalidate session identifiers upon user logout or other session termination.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      session identifiers are invalidated upon user logout or other session termination.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing session authenticity; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing session identifier invalidation upon session termination
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Invalidating session identifiers at logout curtails the ability of adversaries to capture and continue to employ previously valid session IDs.
  GUIDANCE
  tag nist: ['SC-23 (1)']
  tag control: 'SC-23 (1)'
  tag objective: 'SC-23(01)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_23_1: true

  describe 'NIST SP 800-53A Rev 5 objective SC-23(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
