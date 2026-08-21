control 'AU-09(01)' do
  impact 0.5
  title "audit trails are written to hardware-enforced, write-once media."
  desc <<~DESC
    Write audit trails to hardware-enforced, write-once media.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      audit trails are written to hardware-enforced, write-once media.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; access control policy and procedures; procedures addressing protection of audit information; system design documentation; system hardware settings; system configuration settings and associated documentation; system storage media; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: System media storing audit trails
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Writing audit trails to hardware-enforced, write-once media applies to the initial generation of audit trails (i.e., the collection of audit records that represents the information to be used for detection, analysis, and reporting purposes) and to the backup of those audit trails. Writing audit trails to hardware-enforced, write-once media does not apply to the initial generation of audit records prior to being written to an audit trail. Write-once, read-many (WORM) media includes Compact Disc-Recordable (CD-R), Blu-Ray Disc Recordable (BD-R), and Digital Versatile Disc-Recordable (DVD-R). In contrast, the use of switchable write-protection media, such as tape cartridges, Universal Serial Bus (USB) drives, Compact Disc Re-Writeable (CD-RW), and Digital Versatile Disc-Read Write (DVD-RW) results in write-protected but not write-once media.
  GUIDANCE
  tag nist: ['AU-9 (1)']
  tag control: 'AU-9 (1)'
  tag objective: 'AU-09(01)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_9_1: true

  describe 'NIST SP 800-53A Rev 5 objective AU-09(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
