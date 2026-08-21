control 'MA-04(04)(b)(01)' do
  impact 0.5
  title "nonlocal maintenance sessions are protected by separating maintenance sessions from other network sessions with the system by physically separated communication paths; or"
  desc <<~DESC
    Protect nonlocal maintenance sessions by:
      (a) Employing #{input('ma_04_04_odp')} ; and
      (b) Separating the maintenance sessions from other network sessions with the system by either:
        (1) Physically separated communications paths; or
        (2) Logically separated communications paths.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      nonlocal maintenance sessions are protected by separating maintenance sessions from other network sessions with the system by physically separated communication paths; or

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing nonlocal system maintenance; system design documentation; system configuration settings and associated documentation; maintenance records; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; network engineers; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for protecting nonlocal maintenance sessions; mechanisms implementing replay-resistant authenticators; mechanisms implementing logically separated/encrypted communication paths
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Communications paths can be logically separated using encryption.
  GUIDANCE
  tag nist: ['MA-4 (4)']
  tag control: 'MA-4 (4)'
  tag objective: 'MA-04(04)(b)(01)'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}
  tag control_ma_4_4: true
  tag odp: %w{ma_04_04_odp}

  describe 'NIST SP 800-53A Rev 5 objective MA-04(04)(b)(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
