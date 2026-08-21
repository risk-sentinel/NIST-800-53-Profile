control 'AU-12 (1)' do
  impact 0.5
  title 'System-wide and Time-correlated Audit Trail'
  desc <<~DESC
    Compile audit records from #{input('au_12_01_odp_01')} into a system-wide (logical or physical) audit trail that is time-correlated to within #{input('au_12_01_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-12(01) audit records from #{input('au_12_01_odp_01')} are compiled into a system-wide (logical or physical) audit trail that is time-correlated to within #{input('au_12_01_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing audit record generation; system design documentation; system configuration settings and associated documentation; system-wide audit trail (logical or physical); system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit record generation responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing audit record generation capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Audit trails are time-correlated if the time stamps in the individual audit records can be reliably related to the time stamps in other audit records to achieve a time ordering of the records within organizational tolerances.
  GUIDANCE
  tag nist: ['AU-12 (1)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{au_12_01_odp_01 au_12_01_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AU-12 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
