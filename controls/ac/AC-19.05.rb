control 'AC-19(05)' do
  impact 0.5
  title "#{input('ac_19_05_odp_01')} is employed to protect the confidentiality and integrity of information on #{input('ac_19_05_odp_02')}."
  desc <<~DESC
    Employ #{input('ac_19_05_odp_01')} to protect the confidentiality and integrity of information on #{input('ac_19_05_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_19_05_odp_01')} is employed to protect the confidentiality and integrity of information on #{input('ac_19_05_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access control for mobile devices; system design documentation; system configuration settings and associated documentation; encryption mechanisms and associated configuration documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access control responsibilities for mobile devices; system/network administrators; organizational personnel with information security responsibilities
      TEST: Encryption mechanisms protecting confidentiality and integrity of information on mobile devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Container-based encryption provides a more fine-grained approach to data and information encryption on mobile devices, including encrypting selected data structures such as files, records, or fields.
  GUIDANCE
  tag nist: ['AC-19 (5)']
  tag control: 'AC-19 (5)'
  tag objective: 'AC-19(05)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_19_5: true
  tag odp: %w{ac_19_05_odp_01 ac_19_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AC-19(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
