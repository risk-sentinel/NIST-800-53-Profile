control 'SI-12(03)[02]' do
  impact 0.5
  title "#{input('si_12_03_odp_02')} are used to destroy information following the retention period;"
  desc <<~DESC
    Use the following techniques to dispose of, destroy, or erase information following the retention period: #{input('si_12_3_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_12_03_odp_02')} are used to destroy information following the retention period;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; personally identifiable information processing procedures; records retention and disposition policy; records retention and disposition procedures; laws, Executive Orders, directives, policies, regulations, standards, and operational requirements applicable to information disposal; media protection policy; media protection procedures; system audit records; audit findings; information disposal records; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with information and records management, retention, and disposition responsibilities; organizational personnel with information security and privacy responsibilities; network administrators
      TEST: Organizational processes for information disposition; automated mechanisms supporting and/or implementing information disposition
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations can minimize both security and privacy risks by disposing of information when it is no longer needed. The disposal or destruction of information applies to originals as well as copies and archived records, including system logs that may contain personally identifiable information.
  GUIDANCE
  tag nist: ['SI-12 (3)']
  tag control: 'SI-12 (3)'
  tag objective: 'SI-12(03)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_si_12_3: true
  tag odp: %w{si_12_03_odp_02 si_12_3_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective SI-12(03)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
