control 'AU-09b.' do
  impact 0.5
  title "#{input('au_09_odp')} are alerted upon detection of unauthorized access, modification, or deletion of audit information."
  desc <<~DESC
    a. Protect audit information and audit logging tools from unauthorized access, modification, and deletion; and
    b. Alert #{input('au_09_odp')} upon detection of unauthorized access, modification, or deletion of audit information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('au_09_odp')} are alerted upon detection of unauthorized access, modification, or deletion of audit information.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; access control policy and procedures; procedures addressing protection of audit information; system design documentation; system configuration settings and associated documentation; system audit records; audit tools; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing audit information protection
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Audit information includes all information needed to successfully audit system activity, such as audit records, audit log settings, audit reports, and personally identifiable information. Audit logging tools are those programs and devices used to conduct system audit and logging activities. Protection of audit information focuses on technical protection and limits the ability to access and execute audit logging tools to authorized individuals. Physical protection of audit information is addressed by both media protection controls and physical and environmental protection controls.
  GUIDANCE
  tag nist: ['AU-9']
  tag control: 'AU-9'
  tag objective: 'AU-09b.'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_au_9: true
  tag odp: %w{au_09_odp}

  describe 'NIST SP 800-53A Rev 5 objective AU-09b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
