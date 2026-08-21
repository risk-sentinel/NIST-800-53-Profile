control 'AC-04(09)' do
  impact 0.5
  title "human reviews are used for #{input('ac_04_09_odp_01')} under #{input('ac_04_09_odp_02')}."
  desc <<~DESC
    Enforce the use of human reviews for #{input('ac_04_09_odp_01')} under the following conditions: #{input('ac_04_09_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      human reviews are used for #{input('ac_04_09_odp_01')} under #{input('ac_04_09_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; records of human reviews regarding information flows; list of information flows requiring the use of human reviews; list of conditions requiring human reviews for information flows; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; organizational personnel with information flow enforcement responsibilities; system developers
      TEST: Mechanisms enforcing the use of human reviews
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations define security or privacy policy filters for all situations where automated flow control decisions are possible. When a fully automated flow control decision is not possible, then a human review may be employed in lieu of or as a complement to automated security or privacy policy filtering. Human reviews may also be employed as deemed necessary by organizations.
  GUIDANCE
  tag nist: ['AC-4 (9)']
  tag control: 'AC-4 (9)'
  tag objective: 'AC-04(09)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_9: true
  tag odp: %w{ac_04_09_odp_01 ac_04_09_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AC-04(09)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
