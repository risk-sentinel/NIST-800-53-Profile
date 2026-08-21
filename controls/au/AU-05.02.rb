control 'AU-05(02)' do
  impact 0.5
  title "an alert is provided within #{input('au_05_02_odp_01')} to #{input('au_05_02_odp_02')} when #{input('au_05_02_odp_03')} occur."
  desc <<~DESC
    Provide an alert within #{input('au_05_02_odp_01')} to #{input('au_05_02_odp_02')} when the following audit failure events occur: #{input('au_05_02_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an alert is provided within #{input('au_05_02_odp_01')} to #{input('au_05_02_odp_02')} when #{input('au_05_02_odp_03')} occur.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing response to audit processing failures; system design documentation; system security plan; privacy plan; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Alerts provide organizations with urgent messages. Real-time alerts provide these messages at information technology speed (i.e., the time from event detection to alert occurs in seconds or less).
  GUIDANCE
  tag nist: ['AU-5 (2)']
  tag control: 'AU-5 (2)'
  tag objective: 'AU-05(02)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_au_5_2: true
  tag odp: %w{au_05_02_odp_01 au_05_02_odp_02 au_05_02_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective AU-05(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
