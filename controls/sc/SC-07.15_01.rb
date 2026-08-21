control 'SC-07(15)[01]' do
  impact 0.5
  title "networked, privileged accesses are routed through a dedicated, managed interface for purposes of access control;"
  desc <<~DESC
    Route networked, privileged accesses through a dedicated, managed interface for purposes of access control and auditing.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      networked, privileged accesses are routed through a dedicated, managed interface for purposes of access control;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; system architecture; system configuration settings and associated documentation; audit logs; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms supporting and/or implementing the routing of networked, privileged access through dedicated, managed interfaces
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Privileged access provides greater accessibility to system functions, including security functions. Adversaries attempt to gain privileged access to systems through remote access to cause adverse mission or business impacts, such as by exfiltrating information or bringing down a critical system capability. Routing networked, privileged access requests through a dedicated, managed interface further restricts privileged access for increased access control and auditing.
  GUIDANCE
  tag nist: ['SC-7 (15)']
  tag control: 'SC-7 (15)'
  tag objective: 'SC-07(15)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_7_15: true

  describe 'NIST SP 800-53A Rev 5 objective SC-07(15)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
